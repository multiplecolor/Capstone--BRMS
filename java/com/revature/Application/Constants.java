package com.revature.Application;

public class Constants {
	public static final String Menu_Msg= "----------Welcome to Bus Management-----------";
	public static final String Main_Menu = "1.Add bus\n" + "2. Delete Bus \n" + 
	                 "3. get bus\n" + "4.update bus \n" +"5. Exit";
	public static final String Choice_Msg ="Please Enter Your Choice";
	public static final String SELECT_ALL_QUERY = "SELECT * From Bus";
	public static final String SELECT_SPECIFIC_QUERY = "SELECT bus_id,bus_capFROM USER WHERE bus_id=1";
	public static final String INSERT_QUERY="INSERT INTO Bus VALUES (?,?,?,?,?,?,?,?,?,?,?)";
	public static final String DELETE_QUERY="DELETE FROM `brms`.`Bus` WHERE bus_id=? ";
	public static final String UPDATE_QUERY= "UPDATE FROM `brms`.`Bus` SET `bus_id`=? , `type`=? ,  WHERE `bus_id`=? ";
}