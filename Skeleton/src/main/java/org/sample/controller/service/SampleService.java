package org.sample.controller.service;

import org.sample.controller.exceptions.InvalidUserException;
import org.sample.controller.pojos.NewTeamForm;
import org.sample.controller.pojos.SignupForm;

public interface SampleService {

    public SignupForm saveFrom(SignupForm signupForm) throws InvalidUserException;

	public void saveFrom(NewTeamForm newTeamForm) throws InvalidUserException;

}
