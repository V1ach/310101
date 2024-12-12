import Foundation

import RealNumberOperations
import ComplexNumberOperations

let real1 = 3.5
let real2 = 2.0
let realResult = multiplyRealNumbers(real1, real2)
print("Умножение вещественных чисел: \(real1) * \(real2) = \(realResult)")

let complex1 = Complex(real: 1.0, imaginary: 2.0)
let complex2 = Complex(real: 3.0, imaginary: 4.0)
let complexResult = complex1.multiply(with: complex2)
print("Умножение комплексных чисел: (\(complex1.real) + \(complex1.imaginary)i) * (\(complex2.real) + \(complex2.imaginary)i) = \(complexResult.real) + \(complexResult.imaginary)i")
