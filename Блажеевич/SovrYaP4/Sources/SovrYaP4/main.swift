import Foundation
import Validation

func getInput() -> String? {
    return readLine()
}

func getIntInput() -> Int? {
    if let input = readLine(), let number = Int(input) {
        return number
    }
    return nil
}

var files: [FileProtocol] = []

for _ in 1...3 {
    print("Введите имя файла:")
    guard let name = getInput(), Validator.isValidFileName(name) else {
        print("Ошибка: Имя файла не может быть пустым.")
        continue
    }

    print("Введите размер файла (в байтах):")
    guard let size = getIntInput(), Validator.isValidFileSize(size) else {
        print("Ошибка: Размер файла должен быть неотрицательным числом.")
        continue
    }

    print("Введите количество обращений к файлу:")
    guard let accessCount = getIntInput(), Validator.isValidAccessCount(accessCount) else {
        print("Ошибка: Количество обращений должно быть неотрицательным числом.")
        continue
    }

    let file = File(name: name, size: size, creationDate: Date(), accessCount: accessCount)
    files.append(file)
}

let sortedFiles = files.sorted { $0.name < $1.name }
print("\nСписок файлов, упорядоченных по алфавиту:")
for file in sortedFiles {
    print(file.displayInfo())
}

print("\nВведите минимальный размер файла для фильтрации:")
guard let minSize = getIntInput() else {
    print("Ошибка: Ввод должен быть числом.")
    exit(1)
}

let largeFiles = files.filter { $0.size > minSize }
print("\nСписок файлов, размер которых превышает \(minSize) байт:")
for file in largeFiles {
    print(file.displayInfo())
}

print("\nВведите минимальное количество обращений для фильтрации:")
guard let minAccessCount = getIntInput() else {
    print("Ошибка: Ввод должен быть числом.")
    exit(1)
}

let accessedFiles = files.filter { $0.accessCount > minAccessCount }
print("\nСписок файлов, число обращений к которым превышает \(minAccessCount):")
for file in accessedFiles {
    print(file.displayInfo())
}
