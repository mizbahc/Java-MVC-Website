# Java-MVC-Website
## About
- A website example using Maven web with Model View Controller structure. 
- Login and register functionality with CRUD operations on users.
- ToDo task with CRUD operations on ToDo page.
- JSP pages
- Hibernate and entity classes.

## Installation
- Use Java 1.8
- Create or use a database to give its configuration to hibernate.cfg.xml file.
- Create a hibernate.cfg.xml file under resources file with correct mapping and configuration.
An example hibernate.cfg.xml file:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE hibernate-configuration PUBLIC "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
        "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd">

<hibernate-configuration>
    <session-factory>
        <property name="connection.driver_class">org.postgresql.Driver</property>
        <property name="connection.url">jdbc:postgresql://localhost:5432/YourDatabaseUrl</property>
        <property name="connection.username">YourDatabaseUsername</property>
        <property name="connection.password">YourDatabasePassword</property>
        <property name="connection.pool_size">10</property>

        <mapping class="com.clk.model.User"/>
        <mapping class="com.clk.model.Task"/>

    </session-factory>
</hibernate-configuration>
```
- Under resources folder, in hibernate.properties file change 
```xml 
hibernate.hbm2ddl.auto=none
```
 to
```xml
hibernate.hbm2ddl.auto=create
```
for the first usage while registering a user and change back to 'none' after first run. 

- Add Apache Tomcat Server and configure with project artifacts.
- Start your database.
- Run Tomcat server
- It will open in a new browser. If not go to [http://localhost:8080/JavaMVCWebsite_war/](http://localhost:8080/JavaMVCWebsite_war/)

## Screenshots
![Screenshot from 2021-09-16 22-03-35](https://user-images.githubusercontent.com/41731318/133670460-3ab378c5-c657-4185-8146-91e96f2f2fb9.png)  
![Screenshot from 2021-09-16 22-03-47](https://user-images.githubusercontent.com/41731318/133670511-4dd16d9f-7c99-426a-8670-0777f5688e67.png)  

![Screenshot from 2021-09-16 22-03-56](https://user-images.githubusercontent.com/41731318/133670529-b2745f38-3829-4cf0-950b-788e4f82e636.png)  

