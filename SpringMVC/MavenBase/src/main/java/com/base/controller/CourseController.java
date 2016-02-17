/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.base.controller;

import com.base.DAO.CourseDAO;
import com.base.models.Course;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Ohjelmistokehitys
 */

@Controller
public class CourseController {
    
    @RequestMapping(value="/admin/course", method=RequestMethod.GET)
    public String renderCourse(ModelMap map){
        map.addAttribute("isLogged", true);
        map.addAttribute("course", new Course());
        try{
            map.addAttribute("courses", CourseDAO.getAllCourses());
        }catch(Exception e){
            e.printStackTrace();
        }
        return "course";
    }
    
    @RequestMapping(value="/admin/course", method=RequestMethod.POST)
    public String addNewCourse(@ModelAttribute("course") Course cour,ModelMap map){
        map.addAttribute("isLogged", true);
        try{
            CourseDAO.addCourse(cour);
            map.addAttribute("courses", CourseDAO.getAllCourses());
        }catch(Exception e){
            e.printStackTrace();
        }
        return "course";
    }
    
}
