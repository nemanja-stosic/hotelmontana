package main.hotelmanagementsystem.controller;

import java.time.LocalDate;
import static java.time.temporal.ChronoUnit.DAYS;
import java.util.Arrays;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import main.hotelmanagementsystem.dao.AdminRepository;
import main.hotelmanagementsystem.dao.ReservationRepository;
import main.hotelmanagementsystem.model.Admin;
import main.hotelmanagementsystem.model.GuestArchive;
import main.hotelmanagementsystem.model.HotelFactory;
import main.hotelmanagementsystem.model.Reservation;
import main.hotelmanagementsystem.model.Rooms;
import main.hotelmanagementsystem.services.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import main.hotelmanagementsystem.dao.GuestArchiveRepository;

@Controller
public class AdminController {

    @Autowired
    AdminRepository adminRepository;

    @Autowired
    ReservationRepository reservationRepository;

    @Autowired
    GuestArchiveRepository guestArchieveRepository;

    @Autowired
    ReservationService reservationService;

    //to check if admin is logged and to prevent GET method for admin_page to be exploited.
    public static boolean isAdminLoggedIn = false;

    //showing form with certain guest id that is clicked, basically passing id to form for update request in order to show guest name that needs update.
    @GetMapping("/update")
    public ModelAndView setupUpdate(@RequestParam("guestId") int theId, Model theModel) {
        ModelAndView mv = new ModelAndView();
        Reservation theGuest = reservationRepository.getReferenceById(theId);
        mv.addObject("guest", theGuest);
        mv.addObject("hotelFactory", new HotelFactory());
        fillRoomTypeAndNumbers(mv);
        mv.setViewName("update_form");
        return mv;
    }

    @GetMapping("/bill")
    public ModelAndView setupBill(@RequestParam("guestId") int theId, Model theModel) {
        ModelAndView mv = new ModelAndView();
        Reservation theGuest = reservationRepository.getReferenceById(theId);
        mv.addObject("guest", theGuest);
        mv.addObject("guestArchieve", new GuestArchive());

        double totalPrice = getTotalPrice(theGuest);

        //making sure that checkout date and current date are the same so that we can bill the guest
        LocalDate currentDate = LocalDate.now();
        if (!theGuest.getCheckout().equals(currentDate)) {
            mv.addObject("invalidCheckoutDate", "Please, update first checkout date!");
            getReservationData(mv);
            getGuestArchiveData(mv);
            mv.setViewName("admin_page");
            return mv;
        }

        mv.addObject("totalPrice", totalPrice);
        fillRoomTypeAndNumbers(mv);
        mv.setViewName("bill_form");
        return mv;
    }

    @GetMapping("/guest_archive")
    public ModelAndView showGuestArchive() {
        ModelAndView mv = new ModelAndView();

        getReservationData(mv);
        getGuestArchiveData(mv);
        mv.setViewName("guest_archive");
        return mv;
    }

    @GetMapping("/admin_page")
    public ModelAndView showAdminPage() {
        ModelAndView mv = new ModelAndView();

        //validation
        if (isAdminLoggedIn) {
            //filling table with guests data
            getReservationData(mv);
            getGuestArchiveData(mv);
            mv.setViewName("admin_page");
            return mv;
        }

        //if someone tries to access admin_page in questionable  way, it will return him on home page
        mv.setViewName("redirect:home");
        return mv;
    }

    @PostMapping("/admin_page")
    public ModelAndView login(@Valid @ModelAttribute("admin") Admin admin, BindingResult result) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("hotelFactory", new HotelFactory());
        mv.addObject("reservation", new Reservation());
        mv.addObject("rooms", new Rooms());

        Admin adminDBData = adminRepository.loginValidation(admin.getUsername(), admin.getPassword());

        if (result.hasErrors()) {
            mv.setViewName("home");
            return mv;
        }

        //validation
        if (adminDBData != null && adminDBData.getUsername().equals(admin.getUsername()) && adminDBData.getPassword().equals(admin.getPassword())) {
            //filling table with guests data
            getReservationData(mv);
            getGuestArchiveData(mv);
            isAdminLoggedIn = true;
            mv.setViewName("admin_page");
            return mv;
        } else {
            //adding error message and returning home page 
            mv.addObject("invalidLogin", "Incorrect username or password!");
            mv.setViewName("home");
            return mv;
        }
    }

    @PostMapping("/updateGuest")
    public ModelAndView updateGuest(@ModelAttribute("hotelFactory") HotelFactory hotelFactory, ModelMap modelMap, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        modelMap.addAttribute("hotelFactory", hotelFactory);
        mv.addAllObjects(modelMap);

        //if nothing is selected
        if (hotelFactory.getReservation().getCheckout() == null && hotelFactory.getReservation().getAdult() == 0
                && hotelFactory.getReservation().getChildren() == 0 && hotelFactory.getRooms().getName().equals("")) {
            mv.addObject("noUpdate", "Update canceled.");
            getReservationData(mv);
            getGuestArchiveData(mv);
            mv.setViewName("admin_page");
            return mv;
        }

        //super simple room type check availability
        //checking count of checkout dates if there are 5 checkout dates then room is unavaliable if there are less then it's available 
        //(it will automatically delete date when expires) and then room will become available
        int checkoutDates = reservationRepository.getCheckoutDateCount(hotelFactory.getRooms().getName());

        if (checkoutDates >= 5) {
            mv.addObject("unavailableRoom", "Updating Error: Sorry, but that room is currently unavailable.");
            getReservationData(mv);
            getGuestArchiveData(mv);
            mv.setViewName("admin_page");
            return mv;
        }

        reservationService.update(hotelFactory, request);

        getReservationData(mv);
        getGuestArchiveData(mv);
        mv.addObject("successUpdate", "Update successful.");
        mv.setViewName("admin_page");
        return mv;
    }

    //delete user from reservation table when he checks out of hotel and do guest archive table just show it and add home to that table admin page table
    @PostMapping("/billGuest")
    public ModelAndView billGuest(@ModelAttribute("guestArchieve") GuestArchive guestArchieve, ModelMap modelMap, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        //validation for empty fields
        if (guestArchieve.getCardname().isEmpty() || guestArchieve.getCardnumber().isEmpty()
                || guestArchieve.getExpdate().isEmpty() || guestArchieve.getCvv() < 3) {
            mv.addObject("emptyFields", "Billing Error: Please, enter all payment information needed!");
            getReservationData(mv);
            getGuestArchiveData(mv);
            mv.setViewName("admin_page");
            return mv;
        }

        //we bill a guest and delete it from reservation, because he now goes into guest archieve
        reservationService.bill(guestArchieve, request);

        getReservationData(mv);
        getGuestArchiveData(mv);
        mv.addObject("successBill", "Payment successful.");
        mv.setViewName("admin_page");
        return mv;
    }

    private void fillRoomTypeAndNumbers(ModelAndView mv) {
        List<Integer> list = Arrays.asList(0, 1, 2, 3, 4);
        List<String> rooms = Arrays.asList("", "superior", "deluxe", "signature", "couple");
        mv.addObject("numberList", list);
        mv.addObject("roomTypes", rooms);
    }

    private void getReservationData(ModelAndView mv) {
        List<Reservation> tableData = reservationRepository.findAll();
        mv.addObject("tableData", tableData);
    }

    private void getGuestArchiveData(ModelAndView mv) {
        List<GuestArchive> tableData = guestArchieveRepository.findAll();
        mv.addObject("guestArchiveTableData", tableData);
    }

    private double getTotalPrice(Reservation theGuest) {
        //calculating total bill
        long daysBetween = DAYS.between(theGuest.getCheckin(), theGuest.getCheckout());
        return daysBetween * theGuest.getRooms().getPrice();
    }

}
