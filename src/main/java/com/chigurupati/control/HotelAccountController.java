package com.chigurupati.control;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hotelMgmt")
public class HotelAccountController {

    @RequestMapping(value = "/hotelExpenditure", method= RequestMethod.POST)
    public ModelAndView hotelExpenditurePage(@RequestParam("expenditure") String accType )
    {
        ModelAndView modelandview;

        if (accType.equals("expenditure")) {
            modelandview = new ModelAndView("hotel/HotelExpenditure");
            return modelandview;
        }
        modelandview = new ModelAndView("hotel/HotelAccount");
        return modelandview;



    }

    @RequestMapping(value = "/hotelRevenue", method= RequestMethod.POST)
    public ModelAndView hotelRevenuePage(@RequestParam("revenue") String accType )
    {
        ModelAndView modelandview;

        if (accType.equals("revenue")) {
            modelandview = new ModelAndView("hotel/HotelRevenue");
            return modelandview;
        }
        modelandview = new ModelAndView("hotel/HotelAccount");
        return modelandview;



    }

    @RequestMapping(value = "/AddExpenditure", method= RequestMethod.POST)
    public ModelAndView addExpenditure()
    {
        ModelAndView modelandview;

        /*if (accType.equals("expenditure")) {
            modelandview = new ModelAndView("hotel/HotelRevenue");
            return modelandview;
        }*/
        modelandview = new ModelAndView("hotel/HotelExpenditure");
        return modelandview;



    }

    @RequestMapping(value = "/AddRevenue.html", method= RequestMethod.POST)
    public ModelAndView addRevenue()
    {
        ModelAndView modelandview;

        /*if (accType.equals("expenditure")) {
            modelandview = new ModelAndView("hotel/HotelRevenue");
            return modelandview;
        }*/
        modelandview = new ModelAndView("hotel/HotelRevenue");
        return modelandview;



    }
}
