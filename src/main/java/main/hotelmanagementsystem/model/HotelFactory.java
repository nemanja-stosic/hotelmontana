package main.hotelmanagementsystem.model;

//created this because both reservation and rooms objects were needed in a form due to join.

public class HotelFactory {

    private Reservation reservation;
    private Rooms rooms;

    public Reservation getReservation() {
        return reservation;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }

    public Rooms getRooms() {
        return rooms;
    }

    public void setRooms(Rooms rooms) {
        this.rooms = rooms;
    }

}
