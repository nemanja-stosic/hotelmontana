package main.hotelmanagementsystem.services;

import static java.time.temporal.ChronoUnit.DAYS;
import javax.servlet.http.HttpServletRequest;
import main.hotelmanagementsystem.dao.ReservationRepository;
import main.hotelmanagementsystem.model.GuestArchive;
import main.hotelmanagementsystem.model.HotelFactory;
import main.hotelmanagementsystem.model.Reservation;
import org.apache.commons.text.WordUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import main.hotelmanagementsystem.dao.GuestArchiveRepository;

@Transactional
@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
    
    @Autowired
    ReservationRepository reservationRepository;
    
    @Autowired
    GuestArchiveRepository guestArchieveRepository;
    
    @Override
    public void add(HotelFactory hotelFactory) {
        //Capitalizing every word of full name
        String temp = hotelFactory.getReservation().getFull_name();
        temp = WordUtils.capitalizeFully(temp);
        hotelFactory.getReservation().setFull_name(temp);
        
        reservationRepository.save(hotelFactory.getReservation());
    }
    
    @Override
    public void update(HotelFactory hotelFactory, HttpServletRequest request) {

        //getting hidden id from hidden input from update_form.jsp
        int hiddenId = Integer.parseInt(request.getParameter("hiddenId"));
        
        Reservation reservationData = reservationRepository.getReferenceById(hiddenId);

        //checking which values need update
        if (hotelFactory.getReservation().getCheckout() == null) {
            hotelFactory.getReservation().setCheckout(reservationData.getCheckout());
        }
        if (hotelFactory.getReservation().getAdult() == 0) {
            hotelFactory.getReservation().setAdult(reservationData.getAdult());
        }
        
        if (hotelFactory.getReservation().getChildren() == 0) {
            hotelFactory.getReservation().setChildren(reservationData.getChildren());
        }
        
        if (hotelFactory.getReservation().getRooms() == null) {
            hotelFactory.getReservation().setRooms(reservationData.getRooms());
        }

        //setting all other data values 
        hotelFactory.getReservation().setId(reservationData.getId());
        hotelFactory.getReservation().setFull_name(reservationData.getFull_name());
        hotelFactory.getReservation().setCheckin(reservationData.getCheckin());
        
        reservationRepository.save(hotelFactory.getReservation());
        
    }
    
    @Override
    public void bill(GuestArchive guestArchieve, HttpServletRequest request) {
        //getting hidden id from hidden input 
        int hiddenId = Integer.parseInt(request.getParameter("hiddenId"));
        
        Reservation reservationData = reservationRepository.getReferenceById(hiddenId);

        //calculating total bill
        long daysBetween = DAYS.between(reservationData.getCheckin(), reservationData.getCheckout());
        double totalPrice = daysBetween * reservationData.getRooms().getPrice();
        
        guestArchieve.setFull_name(reservationData.getFull_name());
        guestArchieve.setCheckout(reservationData.getCheckout());
        guestArchieve.setBill(totalPrice);
        
        guestArchieveRepository.save(guestArchieve);
        
        reservationRepository.delete(reservationData);
    }
    
}
