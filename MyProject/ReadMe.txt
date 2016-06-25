Directions of use 
------------------
1.import both frontend and backend of my project in eclipse IDE(recommended) or any other IDE.
(IDE:Interactive Development Environment).
2.Install H2 Database(no need to change anything in the project for H2) or If u have any other database servers change the class name and url in the following place : /AntiquesBackEnd1/src/main/java/com/niit/shopingcart/config/ApplicationContextConfig.java.
3.After the changes have been done install the required dependeny for POM.xml file(depends on the databse used), if u are using H2 then dependency already included. 
4.In your Databse create four tables respectively:

   (NOTE: If u dont know how to create tables go this url:http://www.sqlcourse.com/create.html)

    i)user

FIELD   	TYPE  	        NULL  	KEY  	DEFAULT  
ADMIN	    VARCHAR(10)	        YES		NULL
ID	    CHAR(15)	        NO	PRI	NULL
PASSWORD    VARCHAR(50)	        YES		NULL

   ii) category

FIELD   	  TYPE  	NULL  	KEY  	DEFAULT  
ID	        VARCHAR(20)	NO	PRI	NULL
NAME	        VARCHAR(20)	YES		NULL
DESCRIPTION	VARCHAR(100)	YES		NULL
 
   iii) supplier

FIELD  	TYPE  	        NULL  	KEY  	DEFAULT  
ID	CHAR(20)	NO	PRI	NULL
NAME	VARCHAR(30)	YES		NULL
ADDRESS	VARCHAR(40)	YES		NULL

    iv) product
 
FIELD  	          TYPE  	NULL  	KEY  	DEFAULT  
ID	        CHAR(20)	NO	PRI	NULL
NAME	        VARCHAR(40)	YES		NULL
DESCRIPTION	VARCHAR(250)	YES		NULL
PRICE	        DOUBLE(17)	YES		NULL

5.last point only run the frontend of the project, backend is integrated in it
