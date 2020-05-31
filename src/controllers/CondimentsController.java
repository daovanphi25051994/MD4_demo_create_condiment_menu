package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/condiment")
public class CondimentsController {
    @GetMapping()
    public ModelAndView showMenu(){
        ModelAndView modelAndView = new ModelAndView("condiment");
        return modelAndView;
    }
    @PostMapping()
    public ModelAndView addCondiment(@RequestParam String[] condiment){
        ModelAndView modelAndView = new ModelAndView("condiment");
       modelAndView.addObject("condiment", condiment);
        return modelAndView;
    }
}
