﻿Функция СтандартПоддерживается() Экспорт	
	Попытка
		ПоддерживаемаяВерсияБиблиотеки = "2.1.3.0";
		Возврат Вычислить("ОбщегоНазначенияКлиентСервер").СравнитьВерсии(ПоддерживаемаяВерсияБиблиотеки, Вычислить("МенеджерОборудованияВызовСервера").ВерсияБиблиотеки()) <= 0;
	Исключение
		Возврат Ложь;
	КонецПопытки;
КонецФункции