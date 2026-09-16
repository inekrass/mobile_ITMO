## Некрасов Богдан
# ЛР 1. Swift и Xcode

### 1. Decimal — тип данных для работы с десятичными числами с высокой точностью.

Для использования Decimal подключается библиотека Foundation: `import Foundation`

### 2. Проверка окружения
Версия Swift:
```bash
#swift --version     
swift-driver version: 1.168.6 Apple Swift version 6.4 (swiftlang-6.4.0.34.1 clang-2100.3.34.1)
Target: arm64-apple-macosx27.0.0
```

Версия Xcode:
```bash
xcodebuild -version
Xcode 27.0
Build version 27A266a
```

### 3. Ручной билд
- Сборка в Terminal:
```bash
swiftc 1stLab.swift -o firstApp
```
Команда swiftc запускает компилятор Swift.

- Запуск программы:
```bash
./firstApp
```

Основные флаги:
- `-o`задаёт имя итогового файла.

- `-O`включает оптимизацию

- `-typecheck` проверяет код без создания программы
```bash
swiftc -typecheck 1stLab.swift
```
