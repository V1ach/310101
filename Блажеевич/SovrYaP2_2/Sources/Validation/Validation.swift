import Foundation

public struct Validator {
    public static func isValidCarNumber(_ number: String) -> Bool {
        return number.count == 4 && number.allSatisfy { $0.isNumber }
    }
}
