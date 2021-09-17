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
- Create a hibernate.cfg.xml file under src/main/resources folder with correct mapping and configuration.
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

`hibernate.hbm2ddl.auto=none`  to `hibernate.hbm2ddl.auto=create` for the first usage while registering a user. After that change back to 'none'. 

- Add Apache Tomcat Server and configure with project artifacts.
- Start your database.
- Run Tomcat server
- It will open in a new browser. If not go to [http://localhost:8080/JavaMVCWebsite_war/](http://localhost:8080/JavaMVCWebsite_war/)

## Screenshots
- Home Page   &nbsp;    
![Screenshot from 2021-09-16 22-03-35](https://user-images.githubusercontent.com/41731318/133670460-3ab378c5-c657-4185-8146-91e96f2f2fb9.png)  

- Login Screen   &nbsp;     
![Screenshot from 2021-09-16 22-03-47](https://user-images.githubusercontent.com/41731318/133670511-4dd16d9f-7c99-426a-8670-0777f5688e67.png)  

- Register Screen   &nbsp;     
![Screenshot from 2021-09-16 22-03-56](https://user-images.githubusercontent.com/41731318/133670529-b2745f38-3829-4cf0-950b-788e4f82e636.png)  

- User home page   &nbsp;     
![Screenshot from 2021-09-17 22-56-48](https://user-images.githubusercontent.com/41731318/133849703-610c94cd-f049-422b-940a-56fa08dcd586.png)

- User ToDo page   &nbsp;     
![Screenshot from 2021-09-17 23-12-31](https://user-images.githubusercontent.com/41731318/133849719-ff87038f-2db2-479e-8188-c2c4545704a0.png)

- User ToDo page with todos   &nbsp;     
![Screenshot from 2021-09-17 23-13-00](https://user-images.githubusercontent.com/41731318/133849777-45b5e4ce-ce6e-431b-8e48-57bdb21a4d31.png)

