﻿Процедура СохранитьВременноеЗначениеОборудования(ИмяПараметра, ЗначениеПараметра) Экспорт 
	ХранилищеОбщихНастроек.Сохранить("KSOFT_ЭмуляторККТ_54_ФЗ", ИмяПараметра, ЗначениеПараметра);	
КонецПроцедуры
 
Функция ПолучитьВременноеЗначениеОборудования(ИмяПараметра) Экспорт
	Возврат ХранилищеОбщихНастроек.Загрузить("KSOFT_ЭмуляторККТ_54_ФЗ", ИмяПараметра);
КонецФункции

Функция ПараметрСуществуетИНЕРавенЗначению(пПараметры, пИмяПараметры, пЗначение) Экспорт
	Возврат пПараметры.Свойство(пИмяПараметры) И НЕ пПараметры [пИмяПараметры] = пЗначение; 	
КонецФункции

Функция ПараметрСуществуетИРавенЗначению(пПараметры, пИмяПараметры, пЗначение) Экспорт
	Возврат пПараметры.Свойство(пИмяПараметры) И пПараметры [пИмяПараметры] = пЗначение; 	
КонецФункции

Функция ПараметрСуществуетИЗаполнен(пПараметры, пИмяПараметры) Экспорт
	Если ТипЗнч(пПараметры) <> Тип("Структура") Тогда
		Возврат Ложь;
	КонецЕсли; 
	
	Возврат пПараметры.Свойство(пИмяПараметры) И 
		ЗначениеЗаполнено(пПараметры [пИмяПараметры]);
КонецФункции

Функция ККТ_СтруктураЗаполнена(ДанныеСтруктуры) Экспорт
	Если ДанныеСтруктуры = Неопределено Тогда
		Возврат Ложь;
	КонецЕсли; 
	Для Каждого ЭлементСтруктуры Из ДанныеСтруктуры Цикл
		Если ЗначениеЗаполнено(ЭлементСтруктуры.Значение) Тогда
			Возврат Истина;			
		КонецЕсли; 
	КонецЦикла; 
	Возврат Ложь
КонецФункции

Функция ФорматЧислаЗаданногоРазмера(ЧислоДляФорматирования, ЗаданныйРазмер = 0) Экспорт
	ОтформатированноеЧисло = Формат(ЧислоДляФорматирования, "ЧВН=; ЧГ=");
	Если ЗначениеЗаполнено(ЗаданныйРазмер) И СтрДлина(ОтформатированноеЧисло) < ЗаданныйРазмер Тогда 	
		Возврат Формат(ЧислоДляФорматирования, СтрШаблон("ЧЦ=%1; ЧВН=; ЧГ=", ФорматЧислаЗаданногоРазмера(ЗаданныйРазмер)));
	КонецЕсли; 
	Возврат ОтформатированноеЧисло;
КонецФункции
 
Функция СлучайноеЧисло(пДлинаЧисла = 1) Экспорт
	
	ГСЧ = Новый ГенераторСлучайныхЧисел();
	Если пДлинаЧисла = 1 Тогда
		Возврат ГСЧ.СлучайноеЧисло(0, 9);	
	КонецЕсли; 
	ИтоговоеСлучайноеЧисло = ""; 
	Для Сч = 1 По пДлинаЧисла Цикл
		Если Сч = 1 Тогда
			ИтоговоеСлучайноеЧисло = ИтоговоеСлучайноеЧисло + Строка(ГСЧ.СлучайноеЧисло(1, 9));
		Иначе
			ИтоговоеСлучайноеЧисло = ИтоговоеСлучайноеЧисло + Строка(ГСЧ.СлучайноеЧисло(0, 9));
		КонецЕсли; 
	КонецЦикла; 
	
	Возврат Число(ИтоговоеСлучайноеЧисло);		
	
КонецФункции

Функция СтандартПоддерживается() Экспорт	
	Попытка
		ПоддерживаемаяВерсияБиблиотеки = "2.1.3.0";
		Возврат Вычислить("ОбщегоНазначенияКлиентСервер").СравнитьВерсии(ПоддерживаемаяВерсияБиблиотеки, Вычислить("МенеджерОборудованияВызовСервера").ВерсияБиблиотеки()) <= 0;
	Исключение
		Возврат Ложь;
	КонецПопытки;
КонецФункции
 
