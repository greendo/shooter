package serg.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jc on 27.02.18.
 */

@Controller
public class LogController {

    static final List<String> players = new ArrayList<>();

    @RequestMapping(value = "/log", method = RequestMethod.GET)
    public ModelAndView logPage(HttpServletRequest request) {

        ModelAndView page = new ModelAndView("log");
        String name = (String) request.getSession().getAttribute("name");
        if (name != null) {
            page.addObject("name", name);
        }

        return page;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView logIn(HttpServletRequest request) {

        HttpSession session = request.getSession();
        ModelAndView page = new ModelAndView("redirect:/log");
        String attempt = request.getParameter("name");

        //TODO: THIS DOESNT WORK PROPERLY

        if (attempt != null && !players.contains(attempt)) {
            session.setAttribute("name", attempt);
            page.addObject("name", attempt);
        } else if (attempt != null) {
            page.addObject("message", attempt + " is already logged");
        }

        return page;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logOut(HttpServletRequest request) {

        String name = (String) request.getSession().getAttribute("name");
        players.remove(name);
        request.getSession().invalidate();

        return "redirect:/";
    }
}
