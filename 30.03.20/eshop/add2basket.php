<?php
	// подключение
	require "inc/lib.inc.php";
	require "inc/config.inc.php";

	$id = (int)$_GET["id"]; //при нажатии на кнопку "В корзину" принимаем id со страницы catalog.php и приводим значение к числу
	if($id) {
        add2Basket($id); //если id не равен нулю то вызываем функцию которая добавляет товар в корзину
	}
	header("Location: catalog.php"); //перенаправляем пользователя обратно на страницу каталога
	exit; //завершаем скрипт