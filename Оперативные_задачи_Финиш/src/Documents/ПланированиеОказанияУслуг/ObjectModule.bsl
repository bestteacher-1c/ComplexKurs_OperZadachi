Процедура ОбработкаПроведения(Отказ, Режим)

	Движения.ПланированиеОказаниеУслуг.Записывать = Истина;
	Для Каждого ТекСтрокаСостав Из Состав Цикл
		Движение = Движения.ПланированиеОказаниеУслуг.Добавить();
		Движение.Период = Дата;
		Движение.СервисМенеджер = ТекСтрокаСостав.СервисМенеджер;
		Движение.Услуга = ТекСтрокаСостав.Услуга;
		Движение.Контрагент = ТекСтрокаСостав.Контрагент;
		Движение.ДокументОснование = ТекСтрокаСостав.ДокументОснование;
		Движение.ПланируемаяДатаВыполнения = ТекСтрокаСостав.ПланируемаяДатаВыполнения;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры
