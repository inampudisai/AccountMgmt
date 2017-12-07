package com.chigurupati.dao.hotel.hotelinterface;

import com.chigurupati.hotel.model.HotelAccount;

import java.util.Date;
import java.util.List;

public interface HotelActionDAO {

    public void insertBillNo(HotelAccount bean);
    public HotelAccount findByBillNo(String billNo);
    public List<HotelAccount> findAllBills(Date selectDate);



}
