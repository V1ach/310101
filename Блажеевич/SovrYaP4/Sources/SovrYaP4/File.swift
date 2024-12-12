import Foundation

public class File: FileProtocol {
    public var name: String
    public var size: Int
    public var creationDate: Date
    public var accessCount: Int

    public init(name: String, size: Int, creationDate: Date, accessCount: Int) {
        self.name = name
        self.size = size
        self.creationDate = creationDate
        self.accessCount = accessCount
    }

    public func displayInfo() -> String {
        return "Файл: \(name), Размер: \(size) байт, Дата создания: \(creationDate), Количество обращений: \(accessCount)"
    }
}
