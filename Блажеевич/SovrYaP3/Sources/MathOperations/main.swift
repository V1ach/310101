import Foundation
import MathOperations

func getInput() -> Double? {
    if let input = readLine(), let number = Double(input) {
        return number
    }
    return nil
}

print("Введите первое число (a):")
guard let a = getInput() else {
    print("Ошибка: Ввод должен быть числом.")
    exit(1)
}

print("Введите второе число (b):")
guard let b = getInput() else {
    print("Ошибка: Ввод должен быть числом.")
    exit(1)
}

let math = Math(a: a, b: b)
math.addition()
math.subtraction()
math.multiplication()
math.division()
