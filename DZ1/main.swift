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

let animal = Animal(name: "Тоша")
print(animal.description)
print(animal.makeSound())

animal.growOlder()
print(animal.description)

animal.eat()
print(animal.description)
