spring_lab
==============================================================
Author: Rafael Fonseca  
Technologies: JSP, JPA, JSON, Spring, JUnit  
Summary: The `spring_lab` Crud

 
Build and Deploy the Quickstart
-------------------------

2. Open a command line and navigate to the root directory of this project.
3. Type this command to build and deploy the archive:

        mvn clean install jboss-as:deploy

4. This will deploy `target/spring_lab.war` to the running instance of the server.


Access the application
----------------------

The application will be running at the following URL: <http://localhost:8080/spring_lab/>.


Debug the Application
---------------------

If you want to debug the source code or look at the Javadocs of any library in the project, run either of the following 
commands to pull them into your local repository. The IDE should then detect them.

        mvn dependency:sources
        mvn dependency:resolve -Dclassifier=javadoc
