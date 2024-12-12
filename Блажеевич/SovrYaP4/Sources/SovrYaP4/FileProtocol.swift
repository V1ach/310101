import Foundation

public protocol FileProtocol {
    var name: String { get }
    var size: Int { get }
    var creationDate: Date { get }
    var accessCount: Int { get }

    func displayInfo() -> String
}
