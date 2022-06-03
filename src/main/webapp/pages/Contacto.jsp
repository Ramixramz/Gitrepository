<%-- 
    Document   : Contacto
    Created on : 24 may 2022, 10:54:38
    Author     : ramiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<html>
	<head>
		<meta charset="UTF-8">
		<meta name="keywords" content="">
		<meta name="description" content="">
		<meta name="author" content="Leonel Alexis Garcia Juarez - Ramiro Ramirez Ramirez - Luis Fernando Vasquez Fabian">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no,user-scalable=no">
		<link rel="stylesheet" type="text/css" href="css/estilos.css">
		<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
		<link rel="shorcut icon" type="igame/x-icon" href="img/favicon.png">
		<title>Contacto</title>
	</head>
	<body style="background: radial-gradient(circle, rgba(18,239,226,0.3112842549129027) 54%, rgba(15,113,230,0.6502198291425945) 100%)">
	<div class="ui container">
		<nav class="ui seven item stackable menu" style="background-color:#4db5ab">
        </div>
		<div class="ui container">
			<h2 class="ui large center aligned header"><br><br>Contacto</h2>
			<div class="ui grid">
				<div class="sixteen wide mobile eight wide computer column">
					<h4 class="ui header">Dirección:</h4> <address>
						<strong>Cultura Miahuateca</strong><br>
						Guillermo Rojas Mijangos s/n, Col. Ciudad Universitaria<br>
						70800 Miahuatlán de Porfirio Díaz, Oax.<br>
						<i class="phone icon"></i> <a href="tel:+1234567890" >(951) 456-7890</a><br>
						<i class="envelope icon"></i> <a href="https://www.google.com/intl/es/gmail/about/#">wdiseno641@gmail.com</a>
					</address> </div>
				<div class="sixteen wide mobile eight wide computer column">
					<h4 class="ui header">Horario de atención:</h4>
					<p> Lunes-Viernes: 10 am - 6 pm<br> Sabado: 10 am - 2 pm<br> </p>
				</div>
				<div class="sixteen wide mobile eight wide computer column">
					<h4 class="ui header">Mandanos un mensaje:</h4>
					<form class="ui form grid">
						<div class="sixteen wide mobile eight wide computer column">
							<div class="field"> <label for="name">Nombre:</label>
								<div class="ui left icon input"> <input style="box-shadow: 5px 5px 10px 0px" type="text" id="name" placeholder="Nombre"> <i class="user icon"></i> </div>
							</div>
						</div>
						<div class="sixteen wide mobile eight wide computer column">
							<div class="field"> <label for="email">Email:</label>
								<div class="ui left icon input"> <input style="box-shadow: 5px 5px 10px 0px" type="email" id="email" placeholder="ejemplo@email.com"> <i class="envelope icon"></i> </div>
							</div>
						</div>
						<div class="sixteen wide mobile eight wide computer column">
							<div class="field"> <label for="telefono">Telefono:</label>
								<div class="ui left icon input"> <input style="box-shadow: 5px 5px 10px 0px" type="tel" id="telefono" placeholder="0123456789"> <i class="phone icon"></i> </div>
							</div>
						</div>
						<div class="sixteen wide mobile eight wide computer column">
							<div class="field"> <label for="select">Departamento:</label> <select id="select" class="ui dropdown">
									<option value="" >-selecciona aquí-</option>
									<option value="Diseño">Diseño</option>
									<option value="soporte">Soporte tecnico</option>
								</select> <small>Seleccione el destinatario de su mensaje.</small> </div>
						</div>
						<div class="sixteen wide column">
							<div class="field"> <label for="textarea">Mensaje:</label> <textarea style="box-shadow: 5px 5px 10px 0px" id="textarea" rows="5" placeholder="Escriba su mensaje aquí..." required></textarea> </div>
						</div>
						<div class="sixteen wide column"> <button type="submit" class="ui primary button">Enviar</button> <button type="reset" class="ui button">Reiniciar</button> </div>
					</form>
				</div>
				<div class="sixteen wide mobile eight wide computer column">
					<h4 class="ui header">Dónde encontrarnos:</h4>
					<div class="ui embed" data-url="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3295.168967964549!2d-96.5835191599646!3d16.344515243932836!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85b8a60210cd0371%3A0x53ab797c12a36f88!2sUniversidad%20de%20la%20Sierra%20Sur!5e1!3m2!1ses-419!2smx!4v1624383392831!5m2!1ses-419!2smx">
					</div>
				</div>
			</div>
		</div>
		<footer>
			<div class="ui container">
				<div class="ui grid">
					<div class="  center aligned sixteen wide mobile eight wide tablet four wide computer column">
						<h6 class="ui small header">Enlaces</h6>
						<div class="ui list">
							<div class="item"><a href="https://sic.cultura.gob.mx/ficha.php?table=centro_cultural&table_id=233#:~:text=La%20Cultura%20Miahuatl%C3%A1n%20de%20Porfirio,as%C3%AD%20como%20tambi%C3%A9n%20de%20recreaci%C3%B3n." target="_blank">Casa de la Cultura</a></div>
							<div class="item"><a href="https://sic.cultura.gob.mx/" target="_blank">Museo</a></div>
						</div>
					</div>
					<div class=" center aligned sixteen wide mobile eight wide tablet four wide computer column">
						<h6 class="ui small header">Información</h6>
						<div class="ui list">
							<div class="item"><a href="https://www.los-municipios.mx/municipio-miahuatlan-de-porfirio-diaz.html" target="_blank">Gobierno</a></div>
							<div class="item"><a href="https://www.google.com.mx/maps/place/Miahuatl%C3%A1n+de+Porfirio+D%C3%ADaz,+Oax./@16.331272,-96.615423,6054m/data=!3m2!1e3!4b1!4m5!3m4!1s0x85b8a5e955016c13:0x98b40998276ffad5!8m2!3d16.3317796!4d-96.5943562?hl=es-419&authuser=0" target="_blank">Localización</a></div>
							
							<div class="item"><a href="https://es.wikipedia.org/wiki/Batalla_de_Miahuatl%C3%A1n#:~:text=La%20batalla%20de%20Miahuatl%C3%A1n%20tuvo,francesas%20al%20servicio%20del%20Segundo" target="_blank">Historia</a></div>
						</div>
					</div>
					<div class=" center aligned sixteen wide mobile eight wide tablet four wide computer column">
						<h6 class="ui small header">Redes sociales</h6>
						<div class="ui list">
							<div class="item"><a href="https://www.facebook.com/" target="_blank"><i class="facebook icon"></i> Facebook</a></div>
							<div class="item"><a href="https://www.instagram.com/" target="_blank"><i class="instagram icon"></i> Instagram</a></div>
							<div class="item"><a href="https://twitter.com/" target="_blank"><i class="twitter icon"></i> Twitter</a></div>
						</div>
					</div>
					<div class=" center aligned sixteen wide mobile eight wide tablet four wide computer column">
						<h6 class="ui small header">Contacto:</h6> <address>
							<strong>Cultura Miahuateca</strong><br>
							Guillermo Rojas Mijangos s/n, Col. Ciudad Universitaria<br>
							70800 Miahuatlán de Porfirio Díaz, Oax.<br>
							<i class="phone icon"></i> <a href="tel:+1234567890">(951) 456-7890</a><br>
							<i class="envelope icon"></i> <a href="https://www.google.com/intl/es/gmail/about/#" target="_blank">wdiseno641@gmail.com</a>
						</address> </div>
				</div>
				<p class="ui center aligned tiny grey header">&copy; 2021 Cultura Miahuateca. Todos los derechos reservados.</p>
			</div>
		</footer>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/semantic.min.js"></script>
		<script type="text/javascript">
			$('form .ui.dropdown').dropdown();
						$('.embed').embed();
			
		</script>
	</body>
	</html>