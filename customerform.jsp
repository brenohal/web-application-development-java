<%-- Use core library --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<!--
"Time-stamp: <Sat, 12-19-20, 17:48:53 Eastern Standard Time>"
//-->
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="My online portfolio that illustrates skills acquired while working through various project requirements.">
	<meta name="author" content="Brennan O'Halloran">
	<link rel="icon" href="favicon.ico">

	<title>LIS4368 - JSP Forms</title>

	<%@ include file="/css/include_css.jsp" %>		
	
</head>
<body>

<!-- display application path -->
<% //= request.getContextPath()%>
	
<!-- can also find path like this...<a href="${pageContext.request.contextPath}${'/a5/index.jsp'}">A5</a> -->	
	
	<%@ include file="/global/nav_global.jsp" %>	

	<div class="container">
		<div class="starter-template">
					<div class="page-header">

					<!-- View source or uncomment to display Parameter value...
								Parameter value: <%= request.getParameter("assign_num") %>

								Note: use JSTL (JSP Standard Tag Library) combined with EL (Expression Language), instead of Java scriplets to run conditional logic.
								To use core tag must include tag Library link in first line of file - see top.
								<%  //@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
								Also, need taglib .jar files. See WEB-INF > lib directory.
						-->

					<%  // w/o using taglib: String anum = request.getParameter("assign_num"); %>
					<!-- Or, using JSTL's expression language (EL): request parameters made available in implicit param object. -->
						
					<c:set var="anum" value="${param.assign_num}" scope="request" />
					<!-- Uncomment to Print: -->
					<%-- <c:out value="${anum}" /> --%>
					
					<c:choose>
						<c:when test="${anum == null || anum == '0'}">
						<%@ include file="/global/header.jsp" %>
					</div>
					<p><i>${message}</i></p>
						</c:when>

						<c:when test="${anum == 'a4'}">
							<%@ include file="/a4/global/header.jsp" %>													
				</div>
						</c:when>

						<c:when test="${anum == 'a5'}">
							<%@ include file="/a5/global/header.jsp" %>
			</div>
						</c:when>

						<c:when test="${anum == 'p2'}">
							<%@ include file="/p2/global/header.jsp" %>													
			</div>
						</c:when>
						
						<c:otherwise>
							<% response.sendRedirect("/lis4368/index.jsp"); %>
						</c:otherwise>
					</c:choose>
					
					<!--
							 https://www.tutorialspoint.com/servlets/servlets-first-example.htm								
							 http://stackoverflow.com/questions/11731377/servlet-returns-http-status-404-the-requested-resource-servlet-is-not-availa								
							 Form action submission to URL with leading slash:
							 <form action="/servlet">
							 Leading slash / makes URL relative to domain, that is, form will submit to:
							 http://localhost:9999/servlet

							 Form action submission to URL w/o leading slash:								
							 <form action="servlet">
							 Makes URL relative to current directory of current URL. Form will submit to:
							 http://localhost:9999/contextname/somedirectory/servlet								

							 Best solution: make URL domain-relative (won't need to fix URLs when JSP/HTML files moved into another folder)
							 <form action="${pageContext.request.contextPath}/servlet">

							 Makes URL context relative. Form will submit to:								
							 <form action="/contextname/servlet">
							 Will *always* submit to correct URL!

							 Use this servlet for testing: ShowParameters								
					-->
					
					<p><a href="customerAdmin?action=display_customers">Display Customers</a></p>

					<% //for debugging, test input (test servlet provided): action="testInput" %>
					<form id="add_customer_form" method="post" class="form-horizontal" action="${pageContext.request.contextPath}/customerAdmin">

						<input type="hidden" name="action" value="add_customer">

						<div class="form-group">
							<label class="col-sm-4 control-label">FName:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" maxlength="15" name="fname" value="${customer.fname}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-4 control-label">LName:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" maxlength="30" name="lname" value="${customer.lname}" />
							</div>
						</div>

						 <!-- Street -->
						 <div class="form-group">
							<label class="col-sm-4 control-label">Street:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="street" maxlength="30" value="${customer.street}" />
							</div>
						</div>
			
						<!-- City -->
						<div class="form-group">
							<label class="col-sm-4 control-label">City:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="city" maxlength="30" value="${customer.city}" />
							</div>
						</div>
			
						<!-- State -->
						<div class="form-group">
							<label class="col-sm-4 control-label">State:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="state" maxlength="2" value="${customer.state}" />
							</div>
						</div>
			
						<!-- Zip -->
						<div class="form-group">
							<label class="col-sm-4 control-label">Zip:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="zip" maxlenght="9" value="${customer.zip}" />
							</div>
						</div>
			
						<!-- Phone -->
						<div class="form-group">
							<label class="col-sm-4 control-label">Phone:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="phone" maxlenght="10" value="${customer.phone}" />
							</div>
						</div>

			
						
						<div class="form-group">
							<label class="col-sm-4 control-label">Email:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" maxlength="100" name="email" value="${customer.email}" />
							</div>
						</div>

						 <!-- Balance -->
						 <div class="form-group">
							<label class="col-sm-4 control-label">Balance:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" maxlength="7" name="balance" value="${customer.balance}" />
							</div>
						</div>
			
						<!-- Total Sales -->
						<div class="form-group">
							<label class="col-sm-4 control-label">Total Sales:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" maxlength="7" name="total_sales" value="${customer.totalSales}" />
							</div>
						</div>
			
						<!-- Notes (optional) -->
						<div class="form-group">
							<label class="col-sm-4 control-label">Notes:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" maxlength="255" name="notes" value="${customer.notes}" />
							</div>
						</div>
			
						
						<div class="form-group">
							<div class="col-sm-6 col-sm-offset-3">
								<button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
							</div>
						</div>
					</form>

					<%@ include file="/global/footer.jsp" %>

	</div> <!-- end starter-template -->
	</div> <!-- end container -->

	<%-- test server-side validation, by not including client-side JavaScript --%>
 	<%--@ include file="/js/include_js.jsp" --%>		
 
	 <script type="text/javascript">
		$(document).ready(function() {
			$('#add_customer_form').formValidation({
				message: 'This value is not valid',
				icon: {
					valid: 'fa fa-check',
					invalid: 'fa fa-times',
					validating: 'fa fa-refresh'
				},
				fields: {
					fname: {
						validators: {
							notEmpty: {
								message: 'First name is required'
							},
							stringLength: {
								min: 1,
								max: 15,
								message: 'First name no more than 15 characters'
							},
							regexp: {
								regexp: /^[a-zA-Z\-]+$/,
								message: 'First name can only contain letters and hyphens.'
							}
						}
					},
					lname: {
						validators: {
							notEmpty: {
								message: 'Last name is required'
							},
							stringLength: {
								min: 1,
								max: 30,
								message: 'Last name no more than 30 characters'
							},
							regexp: {
								regexp: /^[a-zA-Z\-]+$/,
								message: 'Last name can only contain letters and hyphens'
							}
						}
					},
					street: {
						validators: {
							notEmpty: {
								message: 'Street is required'
							},
							stringLength: {
								max: 30,
								message: 'Street must be no more than 30 characters'
							},
							regexp: {
								regexp: /^[a-zA-Z0-9,\.\- ]+$/,
								message: 'Street can contain letters, numbers, commas, hyphens, periods, and spaces'
							}
						}
					},
					city: {
						validators: {
							notEmpty: {
								message: 'City is required'
							},
							stringLength: {
								max: 30,
								message: 'City must be no more than 30 characters'
							},
							regexp: {
								regexp: /^[a-zA-Z0-9\- ]+$/,
								message: 'City can contain letters, numbers, hyphens, and spaces'
							}
						}
					},
					state: {
						validators: {
							notEmpty: {
								message: 'State is required'
							},
							stringLength: {
								min: 2,
								max: 2,
							   
							},
							regexp: {
								regexp: /^[A-Za-z]{2}$/,
								message: 'State must be 2 letters only'
							}
						}
					},
					zip: {
						validators: {
							notEmpty: {
								message: 'Zip is required'
							},
							regexp: {
								regexp: /^[0-9]{5,9}$/,
								message: 'Zip must be between 5 and 9 digits'
							}
						}
					},
					phone: {
						validators: {
							notEmpty: {
								message: 'Phone is required'
							},
							regexp: {
								regexp: /^[0-9]{10}$/,
								message: 'Phone must be 10 digits (numbers only)'
							}
						}
					},
					email: {
						validators: {
							notEmpty: {
								message: 'Email address is required'
							},
							stringLength: {
								max: 100,
								message: 'Email can be no more than 100 characters'
							},
							regexp: {
								regexp: /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/,
								message: 'Must include a valid email address'
							}
						}
					},
					balance: {
						validators: {
							notEmpty: {
								message: 'Balance is required'
							},
							// Example: up to 6 total digits, allowing 2 decimals
							regexp: {
								regexp: /^\d{1,6}(\.\d{1,2})?$/,
								message: 'Balance must be up to 6 digits, with up to 2 decimals'
							}
						}
					},
					total_sales: {
						validators: {
							notEmpty: {
								message: 'Total Sales is required'
							},
							regexp: {
								regexp: /^\d{1,6}(\.\d{1,2})?$/,
								message: 'Total Sales must be up to 6 digits, with up to 2 decimals'
							}
						}
					},
					notes: {
						// Not required
						validators: {
							stringLength: {
								max: 255,
								message: 'Notes must be no more than 255 characters'
							}
						}
					}
				}
			});
		});
	</script>
	
	</body>
	</html>
	