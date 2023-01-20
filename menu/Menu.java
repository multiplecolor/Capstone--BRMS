package com.revature.menu;
import java.util.Scanner.*;
import com.revature.Application.Constants;


import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import org.apache.log4j.Logger;
import com.revature.dao.BusDao;
import com.revature.dao.BusDaoImpl;

import com.revature.model.Bus;


public class Menu {
	 
	 static BusDaoImpl udi = new BusDaoImpl();
	 static int n=0;
	 static Bus bus= new Bus();
	 static Logger logger = Logger.getLogger(Menu.class.getName());

	 
	static Scanner sc = new Scanner(System.in);
		
	public static void main(String[] args) throws SQLException{
		
		Scanner sc = new Scanner(System.in);
		
      logger.info(Constants. Menu_Msg);
      
      //logger.info(Constant.Choice_Msg);
      //char choice = sc.next().charAt(0);
      byte loop;
      do {
    	  logger.info(Constants.Main_Menu);
    	  logger.info(Constants.Choice_Msg);
          char choice = sc.next().charAt(0);
    	  switch(choice) {
    	  case '1':
    		  logger.info("***********Bus Insert********* ");
    		  //udi.add();
    		  sc.nextLine();
    		  logger.info("Enter bus Id : ");
    		  String busId= sc.nextLine();
    		  bus.setBusId(busId);
    		  
    		  logger.info("Enter bus regnum: ");
    		  String busRegNum= sc.nextLine();
    		  bus.setBusRegNum(busRegNum);
    		  
    		  logger.info("Enter bus capacity");
    		  int  busCap= sc.nextInt();
    		  sc.nextLine();
    		  bus.setCapacity(busCap);
    		  
    		  
    		  logger.info("Enter bus type");
    		  String busType= sc.nextLine();
    		  bus.setType(busType);
    		  udi.add(bus);
    		  logger.info("1 row inserted");
    		  
    		  break;
    	  case '2':
    		  logger.info("delete bus");
    		  sc.nextLine();
    		  logger.info("enter busid for delete");
    		  String bId = sc.nextLine();
    		  udi.delete(bId);
    		  
    		  //Bus bus= new Bus();
  			//BusDaoImpl udi = new BusDaoImpl();
  			
   			logger.info("1 row deleted");
    		 
    		 
    		  break;
    	  case '3':
    		 logger.info("get bus");
    		 //Bus bus= new Bus();
   			 //BusDaoImpl udi = new BusDaoImpl();
    		 sc.nextLine();
    		 logger.info("Enter bid");
    		 String bid = sc.nextLine();
   			 bus=udi.getBus(bid);
   			 logger.info(bus);
    			
    		  break;
    	  case '4':
    		  logger.info("Update Bus");
    		 // BusDaoImpl udi = new BusDaoImpl();
    		  sc.nextLine();
    		  logger.info("Enter bid");
     		 String bid1 = sc.nextLine();
    			 //4bus=udi.getBus(bid);
    			 logger.info("Enter bus regnum: ");
       		  String busRegNum1= sc.nextLine();
       		  bus.setBusRegNum(busRegNum1);
       		  
       		  logger.info("Enter bus capacity");
       		  int  busCap1= sc.nextInt();
       		  sc.nextLine();
       		  bus.setCapacity(busCap1);
       		  
       		  
       		  logger.info("Enter bus type");
       		  String busType1= sc.nextLine();
       		  bus.setType(busType1);
    			
    			udi.update(bus,  bid1);
    			logger.info("1 row updated");
    		  break;
    	  case '5':
    		  logger.info("Exit");
    		  
    	  }
    	  logger.info("****--Do you want to continue ? if yes press 1--*****");
    	  //sc.nextLine();
    	  loop= sc.nextByte();
      }while(loop == 1);
    	  
    	  logger.info("Thank you");
    	  
    	  }
	
	public static void deleteBusFromDatabase(String bId) throws SQLException {
		Bus bus= new Bus();
		BusDaoImpl busDaoImpl = new BusDaoImpl();
		busDaoImpl.delete(bId);
		System.out.println("1 row deleted");
	}
}
		