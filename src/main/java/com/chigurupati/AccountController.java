package com.chigurupati;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;

//import org.jboss.logging.MessageBundle;


@Controller
@RequestMapping("/usrMgmt")
public class AccountController {

    @RequestMapping("/userLogin")
    public ModelAndView getLoginPage(@RequestParam(value = "error", required = false) String error,
                                     @RequestParam(value = "logout", required = false) String logout)
    {
        ModelAndView modelandview = new ModelAndView("base/UserLogin");
        return modelandview;
    }

    @RequestMapping(value = "/homePage", method= RequestMethod.POST)
    public ModelAndView SucessfulLogin(@ModelAttribute("userDetails1") UserDetails userDetails1, BindingResult result, @RequestParam HashMap<String, ArrayList<String>> reqparm)
    {
        ModelAndView modelandview;
        if(result.hasErrors())
        {
            modelandview = new ModelAndView("base/UserLogin");
            return modelandview;
        }

        if(userDetails1.username.equalsIgnoreCase("Admin") && userDetails1.password.equals("Password"))
        {
            // ArrayList propertyName = reqparm.get("region");
            //userDetails1.setRegion(propertyName);
            modelandview = new ModelAndView("base/AccHomePage");
            return modelandview;
        }
        modelandview = new ModelAndView("base/UserLogin");
        return modelandview;

    }


    @RequestMapping(value = "/hotelAccount", method= RequestMethod.POST)
    public ModelAndView hotelHomePage(@RequestParam("hotel") String accType )
    {
        ModelAndView modelandview;

        if (accType.equals("hotelAccount")) {
            modelandview = new ModelAndView("hotel/HotelAccount");
            return modelandview;
        }
            modelandview = new ModelAndView("base/AccHomePage");
            return modelandview;



    }

    @RequestMapping(value = "/sandAccount", method= RequestMethod.POST)
    public ModelAndView sandHomePage(@RequestParam("sand") String accType )
    {
        ModelAndView modelandview;

        if (accType.equalsIgnoreCase("sandaccount")) {
            modelandview = new ModelAndView("sand/SandAccount");
            return modelandview;
        }
        modelandview = new ModelAndView("base/AccHomePage");
        return modelandview;



    }

    @RequestMapping(value = "/earthMoverAccount", method= RequestMethod.POST)
        public ModelAndView earthHomePage(@RequestParam("earth") String accType )
    {
        ModelAndView modelandview;

        if (accType.equals("earthMoverAccount")) {
            modelandview = new ModelAndView("earth/EarthMoverAccount");
            return modelandview;
        }
        modelandview = new ModelAndView("base/AccHomePage");
        return modelandview;



    }

}
