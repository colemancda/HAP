import Foundation

protocol JSONSerializable {
    func serialized() -> [String: JSONValueType]
}

protocol JSONDeserializable {
    init(_ data: [String: JSONValueType]) throws
}

public protocol JSONValueType { }

extension Array: JSONValueType { }
extension Dictionary: JSONValueType { }
extension String: JSONValueType { }
extension Bool: JSONValueType { }
extension Int: JSONValueType { }
extension Double: JSONValueType { }
extension NSNull: JSONValueType { }

public protocol JSONValueTypeConvertible {
    var jsonValueType: JSONValueType { get }
}
