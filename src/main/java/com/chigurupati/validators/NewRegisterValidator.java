package com.chigurupati.validators;

import com.chigurupati.model.base.NewRegistration;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class NewRegisterValidator implements Validator {


    private Pattern pattern;
    private Matcher matcher;

    private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    String ID_PATTERN = "[0-9]+";
    String STRING_PATTERN = "[a-zA-Z]+";
    String MOBILE_PATTERN = "[0-9]{10}";
    String PASSWORD_PATTERN ="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{6,}$";

    public boolean supports(Class<?> aClass) {
        return false;
    }

    public void validate(Object target, Errors errors) {



        NewRegistration newUser = (NewRegistration) target;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "required.id",
                "Id is required.");
//http://www.beingjavaguys.com/2013/05/spring-form-validation.html

        // First Name string conatains characters only
        if (!(newUser.getFirstName() != null && newUser.getFirstName().isEmpty())) {
            pattern = Pattern.compile(STRING_PATTERN);
            matcher = pattern.matcher(newUser.getFirstName());
            if (!matcher.matches()) {
                errors.rejectValue("firstName", "firstName.containNonChar",
                        "Enter a valid first name");
            }
        }

        // Last Name string conatains characters only
        if (!(newUser.getLastName() != null && newUser.getLastName().isEmpty())) {
            pattern = Pattern.compile(STRING_PATTERN);
            matcher = pattern.matcher(newUser.getLastName());
            if (!matcher.matches()) {
                errors.rejectValue("lastName", "lastName.containNonChar",
                        "Enter a valid last name");
            }
        }

        // email validation in spring
        if (!(newUser.getEmailID() != null && newUser.getEmailID().isEmpty())) {
            pattern = Pattern.compile(EMAIL_PATTERN);
            matcher = pattern.matcher(newUser.getEmailID());
            if (!matcher.matches()) {
                errors.rejectValue("emailID", "emailID.incorrect",
                        "Enter a correct emailID");
            }
        }



        // password matching validation
        if (!(newUser.getPassword() != null && newUser.getPassword().isEmpty())) {
            pattern = Pattern.compile(PASSWORD_PATTERN);
            matcher = pattern.matcher(newUser.getPassword());
            if (!matcher.matches()) {
                errors.rejectValue("password", "password.incorrect",
                        "Enter a valid password");
            }
        }

        // phone number validation

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNo",
                "required.phoneNo", "Phone is required.");
        /*if (!(newUser.getPhoneNo().isEmpty())) {
            pattern = Pattern.compile(MOBILE_PATTERN);
            matcher = pattern.matcher(newUser.getPhoneNo());
            if (!matcher.matches()) {
                errors.rejectValue("phoneNo", "phoneNo.incorrect",
                        "Enter a correct phone number");
            }
        }*/







    }
}
