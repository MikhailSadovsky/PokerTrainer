package by.bsuir.ios.pokertrainer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController extends BaseController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHome(HttpServletRequest req, HttpServletResponse resp, Model model) {
		return manageRequests(req, resp, model);
	}
}
