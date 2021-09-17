# Java-MVC-Website
## About
- A website example using Maven web. 
- Login and register functionality with CRUD operations on users.
- ToDo task CRUD operations
- JSP pages
- Hibernate 

## Installation
- Open with your favorite IDE.
- Create or use a database to give its configuration to file below.
- Create an hibernate.cfg.xml file with correct mapping and configuration.

An example 
```xml
<hibernate-configuration>
    <session-factory>
        <property name="connection.driver_class">org.postgresql.Driver</property>
        <property name="connection.url"> YourDatabaseUrl</property>
        <property name="connection.username">YourUsername</property>
        <property name="connection.password">YourPassword</property>
        <property name="connection.pool_size">10</property>

        <mapping class="com.clk.model.User"/>
        <mapping class="com.clk.model.Task"/>

    </session-factory>
</hibernate-configuration>
```
- In hibernate.properties file change "hibernate.hbm2ddl.auto=none" 
 to "hibernate.hbm2ddl.auto=create" for the first run and change back to none after first run. 
- Add Apache Tomcat Server and configure with project artifacts.
- Run Tomcat server

## Screenshots
![Screenshot from 2021-09-16 22-03-35](https://user-images.githubusercontent.com/41731318/133670460-3ab378c5-c657-4185-8146-91e96f2f2fb9.png)  
![Screenshot from 2021-09-16 22-03-47](https://user-images.githubusercontent.com/41731318/133670511-4dd16d9f-7c99-426a-8670-0777f5688e67.png)  

![Screenshot from 2021-09-16 22-03-56](https://user-images.githubusercontent.com/41731318/133670529-b2745f38-3829-4cf0-950b-788e4f82e636.png)  


