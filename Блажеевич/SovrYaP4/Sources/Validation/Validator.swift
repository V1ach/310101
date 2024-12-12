import Foundation

public struct Validator {
    public static func isValidFileName(_ name: String) -> Bool {
        return !name.isEmpty
    }

    public static func isValidFileSize(_ size: Int) -> Bool {
        return size >= 0
    }

    public static func isValidAccessCount(_ count: Int) -> Bool {
        return count >= 0
    }
}
