
import Foundation

//#1. Создать класс Недвижимость
//Параметры: Площадь, цена, адрес
//Методы: Изменение цены, отображение информации
//Наследовать от него классы: Квартира, Склад, Гараж
//В классе Квартира добавить параметр: количество жильцов, массив с удобствами(например: сан.узел, интернет и тд)
//Переопределить метод из базового класса и отобразить все данные об объекте в одной строке
//В классе склад доп.параметры - какой компании пренадлежит и массив с имеющимися товарами на складе
//Добавить метод, отображающий товары на складе
//В классе Гараж добавить параметры - какая машина находится внутри и есть ли подвал внутри гаража
//Доступ к свойствам ограничить модификаторами доступа


class Garage: Realty{
    var car: String
    var isThereBasement: Bool
    init(square: Double, price: Int, adress: String, car: String, isThereBasemant: Bool) {
        self.car = car
        self.isThereBasement = isThereBasemant
        super.init(square: square, price: price, adress: adress)
    }
    override func getInfo() {
        if isThereBasement == true{
            print("Да")
        } else{
            print("Нет")
        }
        print("Площадь недвижимости - \(square), адрес - \(adress), внутри находится машина марки - \(car), имеется ли внутри машина - \(isThereBasement)")
    }
}
