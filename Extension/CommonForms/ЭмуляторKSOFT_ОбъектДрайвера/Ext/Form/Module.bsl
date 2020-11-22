﻿#Область ВебКлиент

&НаКлиенте
Процедура НачатьВызовПолучитьНомерВерсии(ОповещениеМетода) Экспорт
	
	РезультатВызова = ПолучитьНомерВерсии();
	ПараметрыВызова = Новый Массив;	
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);		
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовПолучитьРевизиюИнтерфейса(ОповещениеМетода) Экспорт
	
	РезультатВызова = ПолучитьРевизиюИнтерфейса();
	ПараметрыВызова = Новый Массив;
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);		
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовПолучитьПараметрыККТ(ОповещениеМетода, ИДУстройства, ПараметрыККТ) Экспорт  //
	
	РезультатВызова = ПолучитьПараметрыККТ(ИДУстройства, ПараметрыККТ);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(ПараметрыККТ);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);		
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовОткрытьСмену(ОповещениеМетода, ИДУстройства, ВходныеПараметры, ВыходныеПараметры) Экспорт
	
	РезультатВызова = ОткрытьСмену(ИДУстройства, ВходныеПараметры, ВыходныеПараметры);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(ВходныеПараметры);
	ПараметрыВызова.Добавить(ВыходныеПараметры);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);		
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовЗакрытьСмену(ОповещениеМетода, ИДУстройства, ВходныеПараметры, ВыходныеПараметры) Экспорт
	
	РезультатВызова = ЗакрытьСмену(ИДУстройства, ВходныеПараметры, ВыходныеПараметры);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(ВходныеПараметры);
	ПараметрыВызова.Добавить(ВыходныеПараметры);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);		
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовНапечататьЧекВнесенияВыемки(ОповещениеМетода, ИДУстройства, ВходныеПараметры, пСумма) Экспорт
	
	РезультатВызова = НапечататьЧекВнесенияВыемки(ИДУстройства, ВходныеПараметры, пСумма);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(ВходныеПараметры);
	ПараметрыВызова.Добавить(пСумма);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);	
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовНапечататьОтчетБезГашения(ОповещениеМетода, ИДУстройства, ВходныеПараметры) Экспорт
	
	РезультатВызова = НапечататьОтчетБезГашения(ИДУстройства, ВходныеПараметры);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(ВходныеПараметры);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);	
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовСформироватьЧек(ОповещениеМетода, ИДУстройства, Электронно, ДанныеЧека, ВыходныеПараметрыДокумента) Экспорт 
	
	//Эти **** не удосужились проверить код на работоспособность в новой ревизии
	//Возвращать должно было 4 параметра, а тут как по-старому, зато блин входящих параметров 4
	
	НомерЧека = 0;
	НомерСмены = 0;
	ФискальныйПризнак = "";
	АдресСайтаПроверки = "";
	
	РезультатВызова = СформироватьЧек2005(ИДУстройства, Электронно, ДанныеЧека, НомерЧека, НомерСмены, ФискальныйПризнак, АдресСайтаПроверки);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(Электронно);
	ПараметрыВызова.Добавить(ДанныеЧека);
	ПараметрыВызова.Добавить(НомерЧека);
	ПараметрыВызова.Добавить(НомерСмены);
	ПараметрыВызова.Добавить(ФискальныйПризнак);
	ПараметрыВызова.Добавить(АдресСайтаПроверки);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);	
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовСформироватьЧекКоррекции(ОповещениеМетода, ИДУстройства, ДанныеЧека, ВыходныеПараметрыДокумента, НомерСменыККТ = Неопределено,
	ФискальныйПризнак = Неопределено, АдресСайтаПроверки = Неопределено) Экспорт
	
	Если НомерСменыККТ <> Неопределено Тогда
		//Тогда делаем опять по дебильному
		РезультатВызова = СформироватьЧекКоррекции2005(ИДУстройства, 
		ДанныеЧека, ВыходныеПараметрыДокумента,
		НомерСменыККТ,ФискальныйПризнак, АдресСайтаПроверки);
		
		ПараметрыВызова = Новый Массив;	
		ПараметрыВызова.Добавить(ИДУстройства);
		ПараметрыВызова.Добавить(ДанныеЧека);
		ПараметрыВызова.Добавить(ВыходныеПараметрыДокумента);
		ПараметрыВызова.Добавить(НомерСменыККТ);
		ПараметрыВызова.Добавить(ФискальныйПризнак);
		ПараметрыВызова.Добавить(АдресСайтаПроверки);
		
	Иначе
		РезультатВызова = СформироватьЧекКоррекции(ИДУстройства, ДанныеЧека, ВыходныеПараметрыДокумента);
		
		ПараметрыВызова = Новый Массив;	
		ПараметрыВызова.Добавить(ИДУстройства);
		ПараметрыВызова.Добавить(ДанныеЧека);
		ПараметрыВызова.Добавить(ВыходныеПараметрыДокумента);
		
	КонецЕсли; 
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);	
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовНапечататьТекстовыйДокумент(ОповещениеМетода, ИДУстройства, ДанныеДокумента) Экспорт
	
	РезультатВызова = НапечататьТекстовыйДокумент(ИДУстройства, ДанныеДокумента);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(ДанныеДокумента);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);	
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовПолучитьТекущееСостояние(ОповещениеМетода, ИДУстройства, ВходныеПараметры, ВыходныеПараметры, СтатусСмены = Неопределено, ПараметрыСостояния = Неопределено) Экспорт
	
	Если СтатусСмены <> Неопределено Тогда
		
		РезультатВызова = ПолучитьТекущееСостояние2005(ИДУстройства, ВходныеПараметры, ВыходныеПараметры, СтатусСмены, ПараметрыСостояния);
		
		ПараметрыВызова = Новый Массив;	
		ПараметрыВызова.Добавить(ИДУстройства);
		ПараметрыВызова.Добавить(ВходныеПараметры);
		ПараметрыВызова.Добавить(ВыходныеПараметры);
		ПараметрыВызова.Добавить(СтатусСмены);
		ПараметрыВызова.Добавить(ПараметрыСостояния);
		
	Иначе	
		
		РезультатВызова = ПолучитьТекущееСостояние(ИДУстройства, ВходныеПараметры, ВыходныеПараметры);
		
		ПараметрыВызова = Новый Массив;	
		ПараметрыВызова.Добавить(ИДУстройства);
		ПараметрыВызова.Добавить(ВходныеПараметры);
		ПараметрыВызова.Добавить(ВыходныеПараметры);
		
	КонецЕсли;
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);	
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовПолучитьДополнительныеДействия(ОповещениеМетода, ДополнительныеДействия) Экспорт
	
	РезультатВызова = ПолучитьДополнительныеДействия(ДополнительныеДействия);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ДополнительныеДействия);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовТестУстройства(ОповещениеМетода, Описание, АктивированДемоРежим) Экспорт 
	
	РезультатВызова = ТестУстройства(Описание, АктивированДемоРежим);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(Описание);
	ПараметрыВызова.Добавить(АктивированДемоРежим);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);	
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовПодключить(ОповещениеМетода, ИДУстройства) Экспорт	
	
	РезультатВызова = Подключить(ИДУстройства);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);	
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовОтключить(ОповещениеМетода, ИДУстройства) Экспорт
	
	РезультатВызова = Отключить(ИДУстройства);
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовПолучитьОшибку(ОповещениеМетода, ИнформацияОбОшибке) Экспорт
	
	РезультатВызова = ПолучитьОшибку(ИнформацияОбОшибке);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИнформацияОбОшибке);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

//Существует баг на веб клиенте, ревизия интерфейса 3002, однако
//Получается она как для старых ревизий, поэтому в функции может быть
//сразу 8 параметров, если это так, значит обрабатываем информацию по старому
&НаКлиенте
Процедура НачатьВызовПолучитьОписание(ОповещениеМетода, ОписаниеНаименованиеДрайвера, 
	ОписаниеДрайвера = Неопределено, ТипОборудования = Неопределено, 
	РевизияИнтерфейса = Неопределено, ИнтеграционныйКомпонент = Неопределено, 
	ОсновнойДрайверУстановлен = Неопределено, URLЗагрузкиДрайвера = Неопределено) Экспорт
	
	Если ОписаниеДрайвера <> Неопределено Тогда //Передаем по старому
		
		РезультатВызова = ПолучитьОписание2005(ОписаниеНаименованиеДрайвера, 
		ОписаниеДрайвера, ТипОборудования, РевизияИнтерфейса, 
		ИнтеграционныйКомпонент, ОсновнойДрайверУстановлен, 
		URLЗагрузкиДрайвера);
		ПараметрыВызова = Новый Массив;	
		ПараметрыВызова.Добавить(ОписаниеНаименованиеДрайвера);
		ПараметрыВызова.Добавить(ОписаниеДрайвера);
		ПараметрыВызова.Добавить(ТипОборудования);
		ПараметрыВызова.Добавить(РевизияИнтерфейса);
		ПараметрыВызова.Добавить(ИнтеграционныйКомпонент);
		ПараметрыВызова.Добавить(ОсновнойДрайверУстановлен);
		ПараметрыВызова.Добавить(URLЗагрузкиДрайвера);	
		
	Иначе
		РезультатВызова = ПолучитьОписание(ОписаниеНаименованиеДрайвера);	
		ПараметрыВызова = Новый Массив;	
		ПараметрыВызова.Добавить(ОписаниеНаименованиеДрайвера);
	КонецЕсли; 
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовОткрытьДенежныйЯщик(ОповещениеМетода, ИДУстройства) Экспорт
	
	РезультатВызова = ОткрытьДенежныйЯщик(ИДУстройства);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовПолучитьПараметры(ОповещениеМетода, ПараметрыДрайвера) Экспорт
	
	РезультатВызова = ПолучитьПараметры(ПараметрыДрайвера);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ПараметрыДрайвера);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовОтчетОТекущемСостоянииРасчетов(ОповещениеМетода, ИДУстройства, ВходныеПараметры, ВыходныеПараметры) Экспорт
	
	РезультатВызова = ОтчетОТекущемСостоянииРасчетов(ИДУстройства, ВходныеПараметры, ВыходныеПараметры);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(ВходныеПараметры);
	ПараметрыВызова.Добавить(ВыходныеПараметры);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовУстановитьПараметр(ОповещениеМетода, ИмяПараметра, ЗначениеПараметра) Экспорт
	
	РезультатВызова = УстановитьПараметр(ИмяПараметра, ЗначениеПараметра);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИмяПараметра);
	ПараметрыВызова.Добавить(ЗначениеПараметра);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовПолучитьШиринуСтроки(ОповещениеМетода, ИДУстройства, ШиринаСтроки) Экспорт
	
	РезультатВызова = ПолучитьШиринуСтроки(ИДУстройства, ШиринаСтроки);
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(ШиринаСтроки);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);	
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовВыполнитьДополнительноеДействие(ОповещениеМетода, пИмяДействия) Экспорт
	
	РезультатВызова = ВыполнитьДополнительноеДействие(пИмяДействия);
	
	ПараметрыВызова = Новый Массив;	
	ПараметрыВызова.Добавить(пИмяДействия);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

&НаКлиенте
Процедура НачатьВызовНапечататьКопиюЧека(ОповещениеМетода, ИДУстройства, НомерЧека) Экспорт
	
	РезультатВызова = НапечататьКопиюЧека(ИДУстройства, НомерЧека);
	
	ПараметрыВызова = Новый Массив;
	ПараметрыВызова.Добавить(ИДУстройства);
	ПараметрыВызова.Добавить(НомерЧека);
	
	ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова);
	
КонецПроцедуры

&НаКлиенте
Процедура ОбработатьОповещениеВебКлиент(ОповещениеМетода, РезультатВызова, ПараметрыВызова)
	
	Если ОповещениеМетода.ИмяПроцедуры = "ВыполнениеМетодаЗавершение" Тогда
		ОповещениеМетода.Модуль.ВыполнениеМетодаЗавершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьВыполнитьДополнительноеДействие_Завершение" Тогда
		ОповещениеМетода.Модуль.НачатьВыполнитьДополнительноеДействие_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьУстановкуПараметров_Завершение" Тогда 
		ОповещениеМетода.Модуль.НачатьУстановкуПараметров_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПолучениеОписаниеДрайвера_ПолучитьПараметрыЗавершение" Тогда
		ОповещениеМетода.Модуль.НачатьПолучениеОписаниеДрайвера_ПолучитьПараметрыЗавершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры);	
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПодключениеУстройства_ПолучитьОписаниеЗавершение" Тогда
		ОповещениеМетода.Модуль.НачатьПодключениеУстройства_ПолучитьОписаниеЗавершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 	
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПолучениеОписаниеДрайвера_ПолучитьОписаниеЗавершение" Тогда 	
		ОповещениеМетода.Модуль.НачатьПолучениеОписаниеДрайвера_ПолучитьОписаниеЗавершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 	
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "ПолучениеОшибкиЗавершение" Тогда
		ОповещениеМетода.Модуль.ПолучениеОшибкиЗавершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 	
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьОтключениеУстройства_Завершение" Тогда
		ОповещениеМетода.Модуль.НачатьОтключениеУстройства_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПодключениеУстройства_ПодключитьЗавершение" Тогда
		ОповещениеМетода.Модуль.НачатьПодключениеУстройства_ПодключитьЗавершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьТестУстройства_Завершение" Тогда
		ОповещениеМетода.Модуль.НачатьТестУстройства_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры);	
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПолучениеОписаниеДрайвера_ПолучитьДополнительныеДействияЗавершение" Тогда
		ОповещениеМетода.Модуль.НачатьПолучениеОписаниеДрайвера_ПолучитьДополнительныеДействияЗавершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПолучениеТекущееСостояние_Завершение" Тогда
		ОповещениеМетода.Модуль.НачатьПолучениеТекущееСостояние_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 	
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПечатьЧекаКоррекции_Завершение" Тогда
		ОповещениеМетода.Модуль.НачатьПечатьЧекаКоррекции_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры);
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьФискализациюЧека_Завершение" Тогда
		ОповещениеМетода.Модуль.НачатьФискализациюЧека_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры);
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьОперациюСоСменой_Завершение" Тогда
		ОповещениеМетода.Модуль.НачатьОперациюСоСменой_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПолучениеПараметровККТ_Завершение" Тогда
		ОповещениеМетода.Модуль.НачатьПолучениеПараметровККТ_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПолучениеОписаниеДрайвера_ПолучитьНомерВерсииЗавершение" Тогда
		ОповещениеМетода.Модуль.НачатьПолучениеОписаниеДрайвера_ПолучитьНомерВерсииЗавершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 
	ИначеЕсли ОповещениеМетода.ИмяПроцедуры = "НачатьПолучениеВерсииДрайвера_Завершение" Тогда 
		ОповещениеМетода.Модуль.НачатьПолучениеВерсииДрайвера_Завершение(РезультатВызова, ПараметрыВызова, ОповещениеМетода.ДополнительныеПараметры); 		
	КонецЕсли; 
	
КонецПроцедуры


#КонецОбласти 

&НаКлиенте
Функция ПолучитьНомерВерсии() Экспорт
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьНомерВерсии();
	
КонецФункции

&НаКлиенте 
Функция ПолучитьРевизиюИнтерфейса() Экспорт
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьРевизиюИнтерфейса();	
	
КонецФункции

&НаКлиенте
Функция ПолучитьПараметрыККТ(ИДУстройства, ПараметрыККТ) Экспорт  //
	
	ИнициализацияПервичныхПараметров("ПОЛУЧИТЬ ПАРАМЕТРЫ ККТ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьПараметрыККТ(ПараметрыККТ, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ОткрытьСмену(ИДУстройства, ВходныеПараметры, ВыходныеПараметры) Экспорт
	
	ИнициализацияПервичныхПараметров("ОТКРЫТИЕ СМЕНЫ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ОткрытьСмену(ИДУстройства, ВходныеПараметры, ВыходныеПараметры, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ЗакрытьСмену(ИДУстройства, ВходныеПараметры, ВыходныеПараметры) Экспорт
	
	ИнициализацияПервичныхПараметров("ЗАКРЫТИЕ СМЕНЫ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ЗакрытьСмену(ИДУстройства, ВходныеПараметры, ВыходныеПараметры, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция НапечататьЧекВнесенияВыемки(ИДУстройства, ВходныеПараметры, пСумма) Экспорт
	
	ИнициализацияПервичныхПараметров("ИНКАССАЦИЯ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.НапечататьЧекВнесенияВыемки(ИДУстройства, ВходныеПараметры, пСумма, ПараметрыДрайвера, ТекстОшибки);	
	
КонецФункции

&НаКлиенте
Функция НапечататьОтчетБезГашения(ИДУстройства, ВходныеПараметры) Экспорт
	
	ИнициализацияПервичныхПараметров("ОТЧЕТ БЕЗ ГАШЕНИЯ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.НапечататьОтчетБезГашения(ИДУстройства, ВходныеПараметры, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция СформироватьЧек(ИДУстройства, Электронно, ДанныеЧека, ВыходныеПараметрыДокумента) Экспорт 
	
	ИнициализацияПервичныхПараметров("ЧЕК");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.СформироватьЧек(ИДУстройства, Электронно, ДанныеЧека, ВыходныеПараметрыДокумента, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция СформироватьЧек2005(ИДУстройства, Электронно, ДанныеЧека, НомерЧека, НомерСмены, ФискальныйПризнак, АдресСайтаПроверки) Экспорт 
	
	ИнициализацияПервичныхПараметров("ЧЕК");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.СформироватьЧек2005(ИДУстройства, Электронно, ДанныеЧека, НомерЧека, НомерСмены, ФискальныйПризнак, АдресСайтаПроверки, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция СформироватьЧекКоррекции(ИДУстройства, ДанныеЧека, ВыходныеПараметрыДокумента) Экспорт
	
	ИнициализацияПервичныхПараметров("ЧЕК КОРРЕКЦИИ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.СформироватьЧекКоррекции(ИДУстройства, ДанныеЧека, ВыходныеПараметрыДокумента, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция СформироватьЧекКоррекции2005(ИДУстройства, ДанныеЧека, НомерЧекаККТ, НомерСменыККТ, ФискальныйПризнак, АдресСайтаПроверки) Экспорт 
	
	ИнициализацияПервичныхПараметров("ЧЕК КОРРЕКЦИИ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.СформироватьЧекКоррекции2005(ИДУстройства, ДанныеЧека, НомерЧекаККТ, НомерСменыККТ, ФискальныйПризнак, АдресСайтаПроверки, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция НапечататьТекстовыйДокумент(ИДУстройства, ДанныеДокумента) Экспорт
	
	ИнициализацияПервичныхПараметров("ПЕЧАТЬ ТЕКСТОВОГО ДОКУМЕНТА");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.НапечататьТекстовыйДокумент(ИДУстройства, ДанныеДокумента, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ПолучитьТекущееСостояние(ИДУстройства, ВходныеПараметры, ВыходныеПараметры) Экспорт
	
	ИнициализацияПервичныхПараметров("ПОЛУЧЕНИЕ ТЕКУЩЕГО СОСТОЯНИЯ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьТекущееСостояние(ИДУстройства, ВходныеПараметры, ВыходныеПараметры, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

//Недоработка со стороны разработчиков для веб-клиента
&НаКлиенте
Функция ПолучитьТекущееСостояние2005(ИДУстройства, НомерЧека, НомерСмены, СтатусСмены, ПараметрыСостояния) Экспорт //Для ревизии 2005
	
	ИнициализацияПервичныхПараметров("ПОЛУЧЕНИЕ ТЕКУЩЕГО СОСТОЯНИЯ");
	
	ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьТекущееСостояние(ИДУстройства, НомерЧека, НомерСмены, СтатусСмены, ПараметрыСостояния, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ПолучитьДополнительныеДействия(ДополнительныеДействия) Экспорт
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьДополнительныеДействия(ДополнительныеДействия, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ТестУстройства(Описание, АктивированДемоРежим) Экспорт 
	
	ИнициализацияПервичныхПараметров("ТЕСТ УСТРОЙСТВА");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ТестУстройства(Описание, АктивированДемоРежим, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция Подключить(ИДУстройства) Экспорт	
	
	ИнициализацияПервичныхПараметров("ПОДКЛЮЧЕНИЕ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.Подключить(ИДУстройства, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция Отключить(ИДУстройства) Экспорт
	
	ИнициализацияПервичныхПараметров("ОТКЛЮЧЕНИЕ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.Отключить(ИДУстройства, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ПолучитьОшибку(ИнформацияОбОшибке) Экспорт
	
	ИнформацияОбОшибке = ТекстОшибки;	
	
	Возврат Истина;
	
КонецФункции

&НаКлиенте
Функция ПолучитьОписание(ОписаниеДрайвера) Экспорт
	
	ИнициализацияПервичныхПараметров("ПОЛУЧЕНИЕ ОПИСАНИЯ");	
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьОписание(ОписаниеДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ПолучитьОписание2005(Наименование, Описание, ТипОборудования, 
	РевизияИнтерфейса, ИнтеграционныйКомпонент, ОсновнойДрайверУстановлен, 
	URLЗагрузкиДрайвера) Экспорт
	
	ИнициализацияПервичныхПараметров("ПОЛУЧЕНИЕ ОПИСАНИЯ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьОписание2005(Наименование, Описание, ТипОборудования, 
		РевизияИнтерфейса, ИнтеграционныйКомпонент, ОсновнойДрайверУстановлен, 
		URLЗагрузкиДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ОткрытьДенежныйЯщик(ИДУстройства) Экспорт
	
	ИнициализацияПервичныхПараметров("ОТКРЫТИЕ ДЕНЕЖНОГО ЯЩИКА");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ОткрытьДенежныйЯщик(ИДУстройства, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ПолучитьПараметры(ПараметрыДрайвераТекст) Экспорт
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьПараметры(ПараметрыДрайвераТекст, ИдентификаторОборудования, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ОтчетОТекущемСостоянииРасчетов(ИДУстройства, ВходныеПараметры, ВыходныеПараметры) Экспорт
	
	ИнициализацияПервичныхПараметров("ОТЧЕТ О СОСТОЯНИИ РАСЧЕТОВ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ОтчетОТекущемСостоянииРасчетов(ИДУстройства, ВходныеПараметры, ВыходныеПараметры, ПараметрыДрайвера, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция УстановитьПараметр(ИмяПараметра, ЗначениеПараметра) Экспорт
	
	Если ПараметрыДрайвера = Неопределено Тогда
		ПараметрыДрайвера = Новый Структура;
	КонецЕсли; 
	
	Если ТипЗнч(ЗначениеПараметра) = Тип("Структура") Тогда 
		//Исправление ошибки, при вызове команды "ВыполитьДополнительноеДействие", 
		//передается как параметр вся структура параметров
		Для Каждого Элемент Из ЗначениеПараметра Цикл
			Если Лев(Элемент.Имя, 2) = "P_" Тогда
				ПараметрыДрайвера.Вставить(Сред(Элемент.Имя, 3), Элемент.Значение);	
			КонецЕсли; 
		КонецЦикла; 
	Иначе
		ПараметрыДрайвера.Вставить(ИмяПараметра, ЗначениеПараметра);	
	КонецЕсли; 
	
	Возврат Истина;
	
КонецФункции

&НаКлиенте
Функция ПолучитьШиринуСтроки(ИДУстройства, ШиринаСтроки) Экспорт
	
	ИнициализацияПервичныхПараметров("ПОЛУЧЕНИЕ ШИРИНЫ СТРОКИ");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ПолучитьШиринуСтроки(ИДУстройства, ШиринаСтроки, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция ОперацияФН(ИДУстройства, ТипОперации, ПараметрыФискализацииXML) Экспорт
	
	ИнициализацияПервичныхПараметров("ОПЕРАЦИЯ ФН");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ОперацияФН(ИДУстройства, ТипОперации, ПараметрыФискализацииXML, ТекстОшибки);	
	
КонецФункции

&НаКлиенте
Функция ВыполнитьДополнительноеДействие(ИмяДействия) Экспорт
	
	ИнициализацияПервичныхПараметров(ВРег(ИмяДействия));
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.ВыполнитьДополнительноеДействие(ИмяДействия, ПараметрыДрайвера, ТекстОшибки);	
	
КонецФункции

&НаКлиенте
Функция НапечататьКопиюЧека(ИДУстройства, НомерЧека) Экспорт
	
	ИнициализацияПервичныхПараметров("ПЕЧАТЬ КОПИИ ЧЕКА");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.НапечататьКопиюЧека(ИДУстройства, НомерЧека, ТекстОшибки);
	
КонецФункции

&НаКлиенте
Функция НапечататьПоследнийЧек()
	
	ИнициализацияПервичныхПараметров("ПЕЧАТЬ ПОСЛЕДНЕГО ЧЕКА");
	
	Возврат ЭмуляторKSOFT_ПодключаемоеОборудованиеКлиент.НапечататьКопиюЧека(ТекстОшибки);
	
КонецФункции

&НаКлиенте
Процедура ИнициализацияПервичныхПараметров(Операция)
	
	ИмяОперации = Операция;
	ТекстОшибки = "";
	
КонецПроцедуры 