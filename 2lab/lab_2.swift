import Playgrounds
import Foundation

#Playground{
    
    //ЧАСТЬ 1
    //Задание 1
    let first = "Swift makes"
    let second = "sense"

    print(first + " " + second + "!")
    print("\(first) \(second)!")
    
    //ЧАСТЬ 2
    //Задание 2
    let currentAge = 23
    let ageAfterSevenYears = currentAge + 7
    let averageDaysInYear = 365.2425
    
    let estimatedDaysPassed: Float = Float(ageAfterSevenYears) * Float(averageDaysInYear)
    
    print("Сейчас мне \(currentAge) лет. Через 7 лет мне будет \(ageAfterSevenYears) лет. К этому моменту с рождения пройдет примерно \(Int(estimatedDaysPassed)) дней.")

    //Задание 3
    let firstNumber: Float = 7.25
    let secondNumber: Float = 18.6
    
    let result = Double(firstNumber + secondNumber) //складываем Float, затем переводим в Double
    
    let doubleResult = Double(firstNumber) + Double(secondNumber) //сначала переводим каждое число в Double, затем складываем

    print(result)
    print(doubleResult)
    print(result == doubleResult)

    // Здесь результаты совпадают. С другими числами они могут отличаться:
    // при сложении Float точность ниже, и сумма может округлиться.
    // Преобразование в Double после сложения не вернет потерянную точность.
    
    
    //ЧАСТЬ 3
    //Задание 4
    let ab = 9.0
    let bc = 12.0

    let hypotenuse = sqrt(ab * ab + bc * bc)
    let area = ab * bc / 2
    let perimeter = ab + bc + hypotenuse

    print("Гипотенуза: \(hypotenuse)\nПлощадь: \(area)\nПериметр: \(perimeter)")
    
    //Задание 5
    let totalItems = 15
    let boxesCount = 7
    
    let resultCount = totalItems / boxesCount
    let remainder = totalItems % boxesCount
    
    print("При распределении \(totalItems) элементов по \(boxesCount) коробкам в каждую попадет \(resultCount), останется \(remainder).")
    
    print("\(totalItems) / \(boxesCount) = \(resultCount) \(remainder)/\(boxesCount)")

    
    //ЧАСТЬ 4
    //Задание 6
    let startDay = 14
    let startMonth = 8
    let startYear = 2003
    
    let currentDay = 17
    let currentMonth = 9
    let currentYear = 2026
    
    let pastDays = (currentYear - startYear) * 360 + (currentMonth - startMonth) * 30 + (currentDay - startDay)
    let pastYears = pastDays / 360
    let pastMonths = pastDays / 30
    let pastSeconds = pastDays * 24 * 60 * 60
    
    print("С указанной даты прошло \(pastYears) лет, \(pastMonths) месяцев, \(pastDays) дней и \(pastSeconds) секунд.")
    
    
    //ЧАСТЬ 5
    //Задание 7
    if currentMonth < 1 || currentMonth > 12 {
    print("Ошибка: номер месяца должен находиться в диапазоне от 1 до 12.")
    } else if currentMonth <= 3{
        print("I квартал")
    } else if currentMonth <= 6 {
        print("II квартал")
    } else if currentMonth <= 9 {
        print("III квартал")
    } else {
        print("IV квартал")
    }
    
    //ЧАСТЬ 6
    //Задание 8
    let cosine = cos(2.0)
    
    print(round(cosine * 10000) / 10000)
    
    print(String(format: "%.4f", cosine))
    
    //ЧАСТЬ 7
    //Задание 9
    let deviceInfo = (model: "Iphone 18", releaseYear: 2026, storage: 512)
    
    print("Модель: \(deviceInfo.model)")
    print("Год выпуска: \(deviceInfo.releaseYear)")
    print("Память: \(deviceInfo.storage) ГБ")
    
    print("Модель: \(deviceInfo.model), Год выпуска: \(deviceInfo.releaseYear), Память: \(deviceInfo.storage) ГБ")
    
    //ЧАСТЬ 8
    //Задание 10
    var hasStudentID = true
    var hasScheduledClass = false
    var safetyBriefingPassed = false
    var isInstructor = true
    
    
    let canEnterLab = hasStudentID && (isInstructor || (hasScheduledClass && safetyBriefingPassed))
    
    print("Доступ разрешен: \(canEnterLab)")
    
    
    //Доп. задание
    //Задание 11
    let month = 15

    if month < 1 && month > 12 {
        print("Некорректный номер месяца")
    } else if month <= 3 {
        print("Первый квартал")
    } else if month <= 6 {
        print("Второй квартал")
    } else if month <= 9 {
        print("Третий квартал")
    } else {
        print("Четвертый квартал")
    }
    
    //Ответы на вопросы:
    //1. Потому что оно не соответствует условию "Меньше 1 И больше 12". Число не может
        //одновременно быть меньше 1 и больше 12, поэтому условие с && всегда ложно.
    
    //2. Оператор && использован неверно, тк это логическое И, а нам необходимо использовать
        //логическое или (||) для того чтобы исключить числа непопдающие в диапазон 1...12
    
    //3. Исправить необходимо фрагмент "if month < 1 || month > 12"
    
    //4.
    let correctedMonth = 13
    
    if correctedMonth < 1 || correctedMonth > 12 {
        print("Некорректный номер месяца")
    } else if correctedMonth <= 3 {
        print("Первый квартал")
    } else if correctedMonth <= 6 {
        print("Второй квартал")
    } else if correctedMonth <= 9 {
        print("Третий квартал")
    } else {
        print("Четвертый квартал")
    }
    
}
