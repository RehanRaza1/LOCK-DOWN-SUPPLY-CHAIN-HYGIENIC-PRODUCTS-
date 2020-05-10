<html lang="en">
<head>
<meta charset="utf-8" >
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta name="viewport" content="width=device-width, initial-scale=1" >
<title>Grocekart</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/custom.css" rel="stylesheet" />	
<link href="datetimepicker/css/datetimepicker.min.css" rel="stylesheet"  />
</head>
 
  <body data-spy="scroll" data-target="#my-navbar">
	<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar" >
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="home.jsp" class="navbar-brand">Grocekart</a>
			</div><!--end header-->
		</div><!--end container-->
	</nav><!--end navbar-->	
	<div class="container">
		<section>
			<div class="carousel slide" id="screenshot-carousel" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#screenshot-carousel" data-slide-to="0" class="active"></li>
					<li data-target="#screenshot-carousel" data-slide-to="1"></li>
					<li data-target="#screenshot-carousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="img/pt1.jpg" alt="Text of the image" height="10" width="1200">
						<div class="carousel-caption">
							<h1></h1>
							<p></p>
						</div>
					</div>
					<div class="item">
						<img src="img/pt2.jpg" alt="Text of the image" height="10" width="1200">
						<div class="carousel-caption">
							<h1></h1>
							<p></p>
						</div>
					</div>
					<div class="item">
						<img src="img/pt3.jpg" alt="Text of the image" height="10" width="1200">
						<div class="carousel-caption">
							<h1></h1>
							<p></p>
						</div>
					</div>
				</div><!--end carousel-inner-->
				<a href="#screenshot-carousel" class="left carousel-control" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a href="#screenshot-carousel" class="right carousel-control" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div><!--end of carousel-->
		</section>
		<hr>
	</div><!--end of container-->
                    <%
                    String m=(String)session.getAttribute("msg");
                    if(m!=null){
                    	System.out.println(m);
                    %>
                        <div class="panel">
                            <div class="panel-body bg-danger text-center">
                                <%=m%>
                            </div>
                        </div>
                    <%   
                        session.setAttribute("msg",null);
                    }
                    %>
		<div class="container" >
			<section >
			<div class="row" >
				<div class="col-lg-6" >
					<div class="panel panel-default" >
						<div class="panel-heading text-center" >
							<h3>Registration</h3>
						</div>
						<div class="panel-body" >
							<form action="Register" method='post' data-toggle="validator" enctype='multipart/form-data'  class="form-horizontal" >
								<div class="form-group">
									<label for="email" class="col-lg-3 control-label">Email:</label>
									<div class="col-lg-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="name" class="col-lg-3 control-label">Name:</label>
									<div class="col-lg-9">
										<input type="text" name="name" class="form-control" pattern="^[_A-Z a-z]{1,}$" id="name" placeholder="Enter your name" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="phone" class="col-lg-3 control-label">Phone:</label>
									<div class="col-lg-9">
										<input type="text" name='phone' class="form-control" pattern="^[_0-9]{1,}$" maxlength="10" minlength="10" id="phone" placeholder="Enter your phone" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="pass" class="col-lg-3 control-label">Password:</label>
									<div class="col-lg-9">
										<input type="password" name="password" class="form-control" id="pass" placeholder="Enter your password" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<div class="col-lg-9 col-lg-offset-3">
										<input type="submit" class="btn btn-primary" value='Register'/>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-15">
					<div class="panel panel-default"  >
						<div class="panel-heading text-center">
							<h3>Login</h3>
						</div>
						<div class="panel-body" style="max-width:1000px">
							<form action="LoginCheck"  data-toggle="validator" enctype='multipart/form-data' class="form-horizontal">
								<div class="form-group">
									<label for="email" class="col-lg-3 control-label">Email:</label>
									<div class="col-lg-8">
										<input type="email" name="e" class="form-control" id="email" placeholder="Enter your email" required />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="password" class="col-lg-3 control-label">Password:</label>
									<div class="col-lg-8">
										<input type="password" name="p" class="form-control" id="password" placeholder="Enter your password" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
		  							<div class="col-lg-10 col-lg-offset-3">
										<button type="submit" class="btn btn-primary">Logiuuun</button>
										<button type="reset" class="btn btn-primary">Reset</button>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
										<a href="forgetpassword.jsp">Forget Password?</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
	<hr>
	<!--footer-->
	<div class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<div class="navbar-text pull-left">
				<p>Design and Develop by Binary Beast</p>
			</div>
		</div>
	</div>
	
	
	<script type="text/javascript" src="js/jquery-2.2.2.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/script.js" ></script>
  <script type="text/javascript" src="js/validator.js" ></script>
<script type="text/javaScript" src='js/state.js' ></script>
<script type="text/javascript" src="datetimepicker/js/moment.min.js" ></script>
<script type="text/javascript" src="datetimepicker/js/datetimepicker.min.js" ></script>
	
  </body>
</html>