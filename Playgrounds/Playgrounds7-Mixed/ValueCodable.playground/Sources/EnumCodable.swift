import Foundation

extension RawRepresentable where RawValue: ValueCodable {

    /// Encodes `self` using a given archiver.
    public func encode(with coder: NSCoder) {
        coder.encodeValue(rawValue)
    }

    /// Creates an instance from from data in a given unarchiver.
    public init?(coder: NSCoder) {
        guard let raw = coder.decodeValue(ofType: RawValue.self) else { return nil }
        self.init(rawValue: raw)
    }

}

extension RawRepresentable where RawValue: _ObjectiveCBridgeable, RawValue._ObjectiveCType: NSCoding, RawValue._ObjectiveCType: NSObject {

    /// Encodes `self` using a given archiver.
    public func encode(with coder: NSCoder) {
        coder.encodeValue(rawValue)
    }

    /// Creates an instance from from data in a given unarchiver.
    public init?(coder: NSCoder) {
        guard let raw = coder.decodeValue(ofType: RawValue.self) else { return nil }
        self.init(rawValue: raw)
    }
    
}
