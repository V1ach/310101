import Foundation

public struct Complex {
    public var real: Double
    public var imaginary: Double

    public init(real: Double, imaginary: Double) {
        self.real = real
        self.imaginary = imaginary
    }

    public func multiply(with other: Complex) -> Complex {
        let realPart = self.real * other.real - self.imaginary * other.imaginary
        let imaginaryPart = self.real * other.imaginary + self.imaginary * other.real
        return Complex(real: realPart, imaginary: imaginaryPart)
    }
}
