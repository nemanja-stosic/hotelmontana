package main.hotelmanagementsystem.controller;

import java.util.Arrays;
import java.util.List;
import javax.validation.Valid;
import main.hotelmanagementsystem.dao.ReservationRepository;
import main.hotelmanagementsystem.model.Admin;
import main.hotelmanagementsystem.model.HotelFactory;
import main.hotelmanagementsystem.model.ManagerMessage;
import main.hotelmanagementsystem.model.Reservation;
import main.hotelmanagementsystem.model.Rooms;
import main.hotelmanagementsystem.services.ManagerService;
import main.hotelmanagementsystem.services.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelController {

    @Autowired
    ReservationRepository reservationRepository;

    @Autowired
    ReservationService reservationService;

    @Autowired
    ManagerService managerService;

    @GetMapping("/")
    public String index() {
        return "forward:/home";
    }

    @GetMapping("/home")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("hotelFactory", new HotelFactory());
        mv.addObject("admin", new Admin());
        mv.addObject("reservation", new Reservation());
        mv.addObject("rooms", new Rooms());
        fillRoomTypeAndNumbers(mv);
        //when log out is clicked in admin_page
        AdminController.isAdminLoggedIn = false;
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("/rooms")
    public ModelAndView showInformationForm() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("hotelFactory", new HotelFactory());
        mv.addObject("admin", new Admin());
        mv.addObject("reservation", new Reservation());
        mv.addObject("rooms", new Rooms());
        fillRoomTypeAndNumbers(mv);
        mv.setViewName("rooms");
        return mv;
    }

    @GetMapping("/about")
    public ModelAndView about() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("admin", new Admin());
        mv.setViewName("about");
        return mv;
    }

    @GetMapping("/contact_manager")
    public ModelAndView contactManager() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("admin", new Admin());
        mv.addObject("managerMessage", new ManagerMessage());
        mv.setViewName("contact_manager");
        return mv;
    }

    //book a room method when book now is clicked
    @PostMapping("/booking")
    public ModelAndView addReservation(@ModelAttribute("hotelFactory") HotelFactory hotelFactory, ModelMap modelMap) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("admin", new Admin());
        modelMap.addAttribute("hotelFactory", hotelFactory);
        mv.addAllObjects(modelMap);
        fillRoomTypeAndNumbers(mv);

        //validation
        if (hotelFactory.getReservation().getFull_name().isBlank()) {
            mv.addObject("errorFullname", "Full name needed!");
            mv.setViewName("home");
            return mv;
        }

        //data from database
        String reservationFullName = reservationRepository.getFullNameByName(hotelFactory.getReservation().getFull_name());

        if (reservationFullName != null && reservationFullName.equalsIgnoreCase(hotelFactory.getReservation().getFull_name())) {
            mv.addObject("errorFullname", "That name is unavailable");
            mv.setViewName("home");
            return mv;
        }
        if (hotelFactory.getReservation().getCheckin() == null) {
            mv.addObject("errorCheckin", "Check in date needed!");
            mv.setViewName("home");
            return mv;
        }
        if (hotelFactory.getReservation().getCheckout() == null) {
            mv.addObject("errorCheckout", "Check out date needed!");
            mv.setViewName("home");
            return mv;
        }

        if (hotelFactory.getRooms().getName().equalsIgnoreCase("superior")) {
            hotelFactory.getRooms().setPrice(200);
        } else if (hotelFactory.getRooms().getName().equalsIgnoreCase("deluxe")) {
            hotelFactory.getRooms().setPrice(300);
        } else if (hotelFactory.getRooms().getName().equalsIgnoreCase("signature")) {
            hotelFactory.getRooms().setPrice(150);
        } else if (hotelFactory.getRooms().getName().equalsIgnoreCase("couple")) {
            hotelFactory.getRooms().setPrice(180);
        }

        hotelFactory.getReservation().setRooms(hotelFactory.getRooms());

        //super simple room type check availability
        //checking count of checkout dates if there are 5 checkout dates then room is unavaliable if there are less then it's available (it will automatically delete date when expires)
        //and then room will become available
        int checkoutDates = reservationRepository.getCheckoutDateCount(hotelFactory.getRooms().getName());

        if (checkoutDates >= 5) {
            mv.addObject("unavailableRoom", "Sorry, but that room is currently unavailable.");
            mv.setViewName("home");
            return mv;
        }

        reservationService.add(hotelFactory);

        mv.addObject("successBooking", "Room booked successfully.");
        mv.setViewName("home");
        return mv;
    }

    //when we send message to manager we are going to show it to user
    @PostMapping("/show_message")
    public ModelAndView sendAndShowMessage(@Valid @ModelAttribute("managerMessage") ManagerMessage managerMessage, BindingResult result) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("admin", new Admin());

        if (result.hasErrors()) {
            mv.setViewName("contact_manager");
            return mv;
        }

        managerService.add(managerMessage);

        mv.setViewName("show_message");
        return mv;
    }

    private void fillRoomTypeAndNumbers(ModelAndView mv) {
        List<Integer> adultNumberList = Arrays.asList(1, 2, 3, 4);
        List<Integer> childrenNumberList = Arrays.asList(0, 1, 2, 3, 4);
        List<String> rooms = Arrays.asList("superior", "deluxe", "signature", "couple");
        mv.addObject("adultNumberList", adultNumberList);
        mv.addObject("childrenNumberList", childrenNumberList);
        mv.addObject("roomTypes", rooms);
    }

}
