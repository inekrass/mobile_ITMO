enum EquipmentKind: String {
    case tent
    case chair
    case lamp
}

struct Equipment {
    let title: String
    var price: Int
    let kind: EquipmentKind

    var description: String {
        "Название: \(title), цена: \(price), категория: \(kind.rawValue)"
    }
}

let tent = Equipment(title: "Палатка для похода", price: 2500, kind: .tent)
let chair = Equipment(title: "Кресло рыболовное", price: 700, kind: .chair)
let lamp = Equipment(title: "Лампа настольная", price: 400, kind: .lamp)
let catalog = [tent, chair, lamp]

for item in catalog {
    print(item.description)
}
