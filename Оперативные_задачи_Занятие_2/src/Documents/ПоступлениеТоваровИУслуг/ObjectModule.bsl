
Процедура ОбработкаПроведения(Отказ, Режим)

	Движения.ОстаткиТоваров.Записывать = Истина;
	
	Для Каждого ТекСтрокаТовары Из Товары Цикл
		Движение = Движения.ОстаткиТоваров.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаТовары.Номенклатура;
		Движение.Количество = ТекСтрокаТовары.Количество;
		Движение.Склад = Склад;
		Движение.ОтветственныйЗаЗакупки = Ответственный;
	КонецЦикла;
	
	Движения.Взаиморасчеты.Записывать = Истина;
	
	Движение = Движения.Взаиморасчеты.Добавить();
	Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
	Движение.Период = Дата;
	Движение.Контрагент = Контрагент;
	Движение.Сумма = Товары.Итог("Сумма");

	
КонецПроцедуры
