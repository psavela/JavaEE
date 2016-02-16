/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.base.DAO;

import com.base.models.Students;
import com.base.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Ohjelmistokehitys
 */
public class StudentDAO {
    
    /**
     * This method adds new student into database
     * @param teach
     * @throws java.lang.Exception
     */
    public static void addStudent(Students stud) throws Exception{
        
        //Create session to our database
        Session session = HibernateUtil.getSessionFactory().openSession();
        //Because we are writing to database we need tarnsaction besides session
        Transaction transaction = session.beginTransaction();
        //Add teacher to database
        System.out.println("Save Student info to db");
        session.save(stud);
        //End transaction
        transaction.commit();
        //Release session
        session.close();
    }
    
    public static List<Students> getStudents() throws Exception{
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        //Use hql query language here, NOT SQL!!
        Query query = session.createQuery("from Students");
        List<Students> lst = query.list();
        session.close();
        //Return list of teachers
        return lst;
    }
}
