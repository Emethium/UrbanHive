package com.urbanhive.validator;


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.urbanhive.model.MessageForm;

public class MessageValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return MessageForm.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object object, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "field.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "country", "field.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "messageBody", "field.required");
	}
}
