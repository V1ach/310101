import Foundation

public class Math {
    var a: Double
    var b: Double

    public init(a: Double, b: Double) {
        self.a = a
        self.b = b
    }

    public func addition() {
        validateInputs()
        let result = a + b
        print("Сложение: \(a) + \(b) = \(result)")
    }

    public func subtraction() {
        validateInputs()
        let result = a - b
        print("Вычитание: \(a) - \(b) = \(result)")
    }

    public func multiplication() {
        validateInputs()
        let result = a * b
        print("Умножение: \(a) * \(b) = \(result)")
    }

    public func division() {
        validateInputs()
        if b != 0 {
            let result = a / b
            print("Деление: \(a) / \(b) = \(result)")
        } else {
            print("Ошибка: Деление на ноль!")
        }
    }

    private func validateInputs() {
        if a.isNaN || b.isNaN {
            print("Ошибка: Вводимые значения должны быть числами.")
            return
        }
    }
}
