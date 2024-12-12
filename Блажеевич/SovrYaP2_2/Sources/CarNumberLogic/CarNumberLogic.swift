import Foundation

public struct CarNumberChecker {
    public static func countNumbersWithTwoSameDigits(from numbers: [String]) -> Int {
        var count = 0

        for number in numbers {
            if isTwoSameDigits(number) {
                count += 1
            }
        }

        return count
    }

    private static func isTwoSameDigits(_ number: String) -> Bool {
        var digitCount = [Character: Int]()

        for digit in number {
            digitCount[digit, default: 0] += 1
        }

        return digitCount.values.contains(2)
    }
}
