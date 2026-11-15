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

    var isAlive: Bool {
        age < maxAge && daysWithoutFood < 3
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

class Zoo {
    var animals: [Animal] = []

    func add(animal: Animal) {
        animals.append(animal)
    }

    func showAnimals() {
        for animal in animals {
            print("\(animal.description), звук: \(animal.makeSound())")
        }
    }
}

let tosha = Animal(name: "Тоша")
print(tosha.description)
print(tosha.makeSound())

tosha.growOlder()
print(tosha.description)

tosha.eat()
print(tosha.description)

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

let zoo = Zoo()
zoo.add(animal: rabbit)
zoo.add(animal: parrot)
zoo.add(animal: turtle)
zoo.add(animal: cat)
zoo.add(animal: dog)
zoo.add(animal: Rabbit(name: "Снежок"))
zoo.add(animal: Parrot(name: "Рио"))
zoo.add(animal: Turtle(name: "Тина"))
zoo.add(animal: Cat(name: "Мурка"))
zoo.add(animal: Dog(name: "Рекс"))

print()
zoo.showAnimals()

print()
let fluffy = Rabbit(name: "Пушинка")
fluffy.growOlder()
fluffy.growOlder()
print("Пушинка жива после двух дней без еды:", fluffy.isAlive)
fluffy.growOlder()
print("Пушинка жива после трёх дней без еды:", fluffy.isAlive)

let ginger = Cat(name: "Рыжик")
ginger.growOlder()
ginger.growOlder()
ginger.eat()
ginger.growOlder()
print("Рыжик жив после кормления перед третьим днём:", ginger.isAlive)

let shell = Turtle(name: "Шелли")
shell.age = shell.maxAge - 1
print("Шелли жива в \(shell.age) лет:", shell.isAlive)
shell.growOlder()
print("Шелли жива в \(shell.age) лет:", shell.isAlive)
