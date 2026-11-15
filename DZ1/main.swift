class Animal {
    let name: String
    var age: Int = 0
    var daysWithoutFood: Int = 0

    init(name: String) {
        self.name = name
    }

    var description: String {
        "Имя: \(name), возраст: \(age), дней без еды: \(daysWithoutFood)"
    }

    var maxAge: Int {
        10
    }

    func makeSound() -> String {
        "Неизвестный звук"
    }

    func eat() {
        daysWithoutFood = 0
    }

    func growOlder() {
        age += 1
        daysWithoutFood += 1
    }
}

class Rabbit: Animal {
    override var maxAge: Int {
        12
    }

    override func makeSound() -> String {
        "Фыр-фыр"
    }
}

class Parrot: Animal {
    override var maxAge: Int {
        15
    }

    override func makeSound() -> String {
        "Привет!"
    }
}

class Turtle: Animal {
    override var maxAge: Int {
        20
    }

    override func makeSound() -> String {
        "Тишина — тоже ответ"
    }
}

class Cat: Animal {
    override var maxAge: Int {
        14
    }

    override func makeSound() -> String {
        "Мяу"
    }
}

class Dog: Animal {
    override var maxAge: Int {
        16
    }

    override func makeSound() -> String {
        "Гав"
    }
}

let animal = Animal(name: "Тоша")
print(animal.description)
print(animal.makeSound())

animal.growOlder()
print(animal.description)

animal.eat()
print(animal.description)

let rabbit = Rabbit(name: "Пушок")
let parrot = Parrot(name: "Кеша")
let turtle = Turtle(name: "Тортила")
let cat = Cat(name: "Барсик")
let dog = Dog(name: "Шарик")

print()
print("Кролик:", rabbit.makeSound(), rabbit.maxAge)
print("Попугай:", parrot.makeSound(), parrot.maxAge)
print("Черепаха:", turtle.makeSound(), turtle.maxAge)
print("Кот:", cat.makeSound(), cat.maxAge)
print("Собака:", dog.makeSound(), dog.maxAge)
