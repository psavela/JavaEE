/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.base.DAO;

import com.base.models.Course;
import com.base.util.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Ohjelmistokehitys
 */
public class CourseDAO {
    
    /**
     * This method adds new course into database
     * @param cour
     * @throws java.lang.Exception
     */
    public static void addCourse(Course cour) throws Exception{
        
        //Create session to our database
        Session session = HibernateUtil.getSessionFactory().openSession();
        //Because we are writing to database we need tarnsaction besides session
        Transaction transaction = session.beginTransaction();
        //Add teacher to database
        System.out.println("Save Course info to db");
        session.save(cour);
        //End transaction
        transaction.commit();
        //Release session
        session.close();
    }
    
    public static List<Course> getAllCourses() throws Exception{
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        Criteria criteria = session.createCriteria(Course.class);
        
        List<Course> cou = criteria.list();
        session.close();
        //Return list of courses
        return cou;
    }
}