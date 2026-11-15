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

    func makeBaby() -> Animal {
        Animal(name: "Малыш")
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

    override func makeBaby() -> Animal {
        Rabbit(name: "Малыш")
    }
}

class Parrot: Animal {
    override var maxAge: Int {
        15
    }

    override func makeSound() -> String {
        "Привет!"
    }

    override func makeBaby() -> Animal {
        Parrot(name: "Малыш")
    }
}

class Turtle: Animal {
    override var maxAge: Int {
        20
    }

    override func makeSound() -> String {
        "Тишина — тоже ответ"
    }

    override func makeBaby() -> Animal {
        Turtle(name: "Малыш")
    }
}

class Cat: Animal {
    override var maxAge: Int {
        14
    }

    override func makeSound() -> String {
        "Мяу"
    }

    override func makeBaby() -> Animal {
        Cat(name: "Малыш")
    }
}

class Dog: Animal {
    override var maxAge: Int {
        16
    }

    override func makeSound() -> String {
        "Гав"
    }

    override func makeBaby() -> Animal {
        Dog(name: "Малыш")
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

    func liveOneDay(action: Int? = nil) {
        let todayAnimals = animals
        var babies: [Animal] = []

        for animal in todayAnimals {
            let chosenAction = action ?? Int.random(in: 1...3)

            if chosenAction == 1 {
                animal.eat()
                print("\(animal.name) ест.")
            } else if chosenAction == 3 {
                print("\(animal.name) пытается завести малыша.")
                if animal.age >= 2 && animal.daysWithoutFood <= 1 &&
                    todayAnimals.count + babies.count < 30 {
                    let baby = animal.makeBaby()
                    babies.append(baby)
                    print("У \(animal.name) появился детёныш по имени \(baby.name).")
                }
            } else {
                print("\(animal.name) отдыхает.")
            }

            animal.growOlder()
        }

        animals.removeAll { !$0.isAlive }
        animals.append(contentsOf: babies)
        print("Осталось животных: \(animals.count)")
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
print("Шелли жива в \(shell.age) дней:", shell.isAlive)
shell.growOlder()
print("Шелли жива в \(shell.age) дней:", shell.isAlive)

print()
print("Проверка дня с кормлением")
let testZoo = Zoo()
let snowball = Rabbit(name: "Снежинка")
snowball.growOlder()
snowball.growOlder()
testZoo.add(animal: snowball)
testZoo.liveOneDay(action: 1)
print(snowball.description)

print()
print("Проверка дня с рождением")
testZoo.add(animal: Parrot(name: "Чижик"))
testZoo.liveOneDay(action: 3)
testZoo.showAnimals()

print()
for day in 1...10 {
    if zoo.animals.isEmpty {
        break
    }

    print("День \(day)")
    zoo.liveOneDay()
}
