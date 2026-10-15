# Java Web Applications

**Course portfolio · LIS 4368 — Advanced Web Application Development · Florida State University**

A collection of Java web development coursework, culminating in a customer-entry application built with JSP, servlets, and JDBC. The projects trace a path from basic Java and servlet exercises to form validation and database-backed workflows.

[Portfolio](https://brenohal.github.io/brennan-resume/) · [GitHub profile](https://github.com/brenohal) · [LinkedIn](https://www.linkedin.com/in/brennan-o-halloran)

## Featured project: Customer management

The customer-entry flow collects customer and sales details, validates required input, sends the request to a Java servlet, and uses JDBC to insert the record into MySQL. After submission, the app displays a confirmation page with the entered information.

| Form validation | Customer data entry |
|:--:|:--:|
| [![Successful form validation](https://raw.githubusercontent.com/brenohal/web-application-development-java/master/a4/img/success.png)](https://github.com/brenohal/web-application-development-java/blob/master/a4/img/success.png) | [![Customer data entry example](https://raw.githubusercontent.com/brenohal/web-application-development-java/master/a5/img/db.png)](https://github.com/brenohal/web-application-development-java/blob/master/a5/img/db.png) |

The repository also contains customer listing and edit/delete page scaffolding. The corresponding database operations are not currently connected, so this project should not be described as a complete CRUD application.

## How the app is structured

`JSP form` → `CustomerServlet` → `Customer model` → `CustomerDB` / JDBC → `MySQL`

- **JSP** pages collect customer details and display the confirmation.
- **Servlets** handle form submissions and basic required-field checks.
- **Java classes** represent customer data and prepare database inserts.
- **JDBC** connects the application to a MySQL data source configured for Tomcat.

## Technologies

`Java` · `JSP` · `Jakarta Servlets` · `JDBC` · `MySQL` · `Apache Tomcat` · `HTML` · `CSS` · `Bootstrap`

## Coursework highlights

- **A1:** Java, JDK, and Tomcat setup; introductory JSP page
- **A2:** Basic servlet exercises and request handling
- **A3:** Relational database design and SQL
- **A4:** Servlet/JSP forms and validation states
- **A5:** Validated data entry and database workflow
- **P1:** Form-validation project
- **`skillsets/`:** Standalone Java practice exercises

## Run locally

This is a traditional Tomcat web application, not a Maven or Gradle project. Running the customer workflow requires a compatible JDK and Tomcat installation, a MySQL database, and a configured JDBC data source named `jdbc/bmo22a`.

Before running it, configure the database connection for your own local environment. Do not commit real passwords or credentials to the repository. The project does not currently include a one-command setup.

## Repository map

```text
customerform.jsp     Customer-entry form
thanks.jsp           Submission confirmation
customers.jsp        Customer-list page scaffolding
modify.jsp           Customer-edit page scaffolding
WEB-INF/classes/     Servlet, customer model, and JDBC classes
a1/–a5/              Progressive course assignments
p1/                  Form-validation project
skillsets/           Standalone Java exercises
```
