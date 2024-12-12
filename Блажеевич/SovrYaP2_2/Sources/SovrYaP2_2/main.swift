import Foundation
import Validation
import CarNumberLogic

let carNumbers = ["1423", "1234", "2201", "2215", "1237", "4467"]

let validNumbers = carNumbers.filter { Validator.isValidCarNumber($0) }

let count = CarNumberChecker.countNumbersWithTwoSameDigits(from: validNumbers)

print("Количество номеров машин, содержащих только две одинаковые цифры: \(count)")
