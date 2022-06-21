package main.hotelmanagementsystem.services;

import javax.servlet.http.HttpServletRequest;
import main.hotelmanagementsystem.model.GuestArchive;
import main.hotelmanagementsystem.model.HotelFactory;

public interface ReservationService {

    public void add(HotelFactory hotelFactory);

    public void update(HotelFactory hotelFactory, HttpServletRequest request);
    
    public void bill(GuestArchive guestArchieve, HttpServletRequest request);
    
}
