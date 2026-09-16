import Playgrounds
import Foundation

#Playground{
    let firstNumber = Decimal(10)
    let secondNumber = Decimal(3)

    let sum = firstNumber + secondNumber
    let difference = firstNumber - secondNumber
    let product = firstNumber * secondNumber
    let division = firstNumber / secondNumber

    print("Сумма:", sum)
    print("Разность:", difference)
    print("Произведение:", product)
    print("Деление:", division)
    
    
    //Decimal vs Double

    let a = 0.1 //Double
    let b = 0.2 //Double
    print(a + b) //0.30000000000000004

    
    let c = Decimal(0.1)
    let d = Decimal(0.2)
    print(c + d) //0.3
}
