<!-- Local review draft. Nothing here has been published to GitHub. -->

# Customer Management Web App

**Java · JSP · Servlets · JDBC · Apache Tomcat**

A Java web application for managing customer records, built as part of my Florida State University web development coursework. The repository includes JSP forms and pages, servlet-based request handling, a customer model, and a JDBC data layer.

**[Portfolio](https://brenohal.github.io/brennan-resume/) · [GitHub profile](https://github.com/brenohal) · [LinkedIn](https://www.linkedin.com/in/brennan-o-halloran)**

## What it does

- Accepts customer details through web forms and validates input.
- Uses Java servlets to handle application requests.
- Separates customer data and database work into model and data classes.
- Includes customer display and modification flows, plus smaller JSP exercises from the course.

## See it in action

| Form validation · success | Form validation · error |
|:---:|:---:|
| [![Successful form validation example](https://raw.githubusercontent.com/brenohal/web-application-development-java/master/a4/img/success.png)](https://github.com/brenohal/web-application-development-java/blob/master/a4/img/success.png) | [![Unsuccessful form validation example](https://raw.githubusercontent.com/brenohal/web-application-development-java/master/a4/img/failed.png)](https://github.com/brenohal/web-application-development-java/blob/master/a4/img/failed.png) |

## Tech stack

`Java` · `JSP` · `Servlets` · `JDBC` · `MySQL` · `Apache Tomcat` · `HTML` · `CSS` · `Bootstrap`

## Repository map

- `customerform.jsp`, `customers.jsp`, and `modify.jsp` — customer form, listing, and modification pages
- `WEB-INF/classes/crud/` — servlet, customer model, and database classes
- `a1/`–`a5/` — progressive course exercises, including validation and JSP examples
- `p1/` and `p2/` — project submissions
- `skillsets/` — standalone Java practice exercises

## Run locally

This is a traditional JSP web application rather than a Maven or Gradle project. It requires a JDK and Apache Tomcat; the customer pages also expect a configured relational database and JDBC connection. The repository does not currently provide a one-command setup, so the database connection and Tomcat deployment need to be configured for your local environment before running the app.


