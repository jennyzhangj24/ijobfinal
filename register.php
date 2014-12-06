<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<html>
<head>
	<link rel="stylesheet" type="text/css" href="newjobstyle.css" />
	<title>
		New job form
	</title>
</head>
<body>
	<section id="form">
		<form name="form" method="post" action="register_finish.php">
		<li>Username:<input type="text" name="id" /> </li>
		<li>Password:<input type="password" name="pw" /> </li>
		<li>Password again:<input type="password" name="pw2" /></li>
		<li>Gender:
			<select name="Gender">
				<option value="Male">Male</option>
				<option value="Female">Female</option>
			</select>
		</li>
		<li>Telephone:<input type="text" name="telephone" /></li>
		<li>Address:<input type="text" name="address" /></li>
		<li>Email:<input type="text" name="email" /></li>
		<li>Others:<textarea name="other" cols="45" rows="5"></textarea></li>
		<input type="submit" name="button" value="submit" />
		</form>
    </section>
</body>
</html>