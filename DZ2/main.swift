import Foundation

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

let path = "DZ2/equipment.txt"
let text: String

do {
    text = try String(contentsOfFile: path, encoding: .utf8)
} catch {
    print("Не удалось прочитать \(path): \(error.localizedDescription)")
    exit(1)
}

let normalizedText = text.replacingOccurrences(of: "\r\n", with: "\n")

var catalog: [Equipment] = []
var errorCount = 0

for line in normalizedText.split(separator: "\n") {
    let parts = line.split(separator: ";", omittingEmptySubsequences: false)

    guard parts.count == 3 else {
        print("Пропущена строка с неверным количеством полей: \(line)")
        errorCount += 1
        continue
    }

    guard let kind = EquipmentKind(rawValue: String(parts[0])) else {
        print("Пропущена строка с неизвестной категорией: \(line)")
        errorCount += 1
        continue
    }

    let title = String(parts[1])
    guard !title.isEmpty else {
        print("Пропущена строка с пустым названием: \(line)")
        errorCount += 1
        continue
    }

    guard let price = Int(String(parts[2])), price >= 0 else {
        print("Пропущена строка с неверной ценой: \(line)")
        errorCount += 1
        continue
    }

    catalog.append(Equipment(title: title, price: price, kind: kind))
}

print("Корректных записей: \(catalog.count)")
print("Ошибочных строк: \(errorCount)")

for item in catalog {
    print(item.description)
}

if let item = catalog.first {
    var copy = item
    copy.price = 500

    print("Цена исходного предмета: \(item.price)")
    print("Цена копии: \(copy.price)")
}

var totalPrice = 0
var lampCount = 0

print("Предметы дешевле 1000:")
for item in catalog {
    if item.price < 1000 {
        print(item.description)
    }

    totalPrice += item.price

    if item.kind == .lamp {
        lampCount += 1
    }
}

print("Общая цена: \(totalPrice)")
print("Количество ламп: \(lampCount)")
