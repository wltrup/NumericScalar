import Foundation
import CoreGraphics

// XXX Needs tests

public protocol NumericScalar: Numeric & Hashable & Comparable {

    static var isBinaryInteger: Bool { get }
    static var isBinaryFloatingPoint: Bool { get }
    static var isUInt8: Bool { get }
    static var isUInt16: Bool { get }
    static var isUInt32: Bool { get }
    static var isUInt64: Bool { get }
    static var isUInt: Bool { get }
    static var isInt8: Bool { get }
    static var isInt16: Bool { get }
    static var isInt32: Bool { get }
    static var isInt64: Bool { get }
    static var isInt: Bool { get }
    static var isFloat: Bool { get }
    static var isDouble: Bool { get }
    static var isFloat80: Bool { get }
    static var isCGFloat: Bool { get }

}

public extension NumericScalar {

    static var isBinaryInteger: Bool { return false }
    static var isBinaryFloatingPoint: Bool { return false }
    static var isBinaryIntegerOrBinaryFloatingPoint: Bool {
        return isBinaryInteger || isBinaryFloatingPoint
    }
    static var isNeitherBinaryIntegerNorrBinaryFloatingPoint: Bool {
        return isBinaryIntegerOrBinaryFloatingPoint == false
    }
    static var isUInt8: Bool { return false }
    static var isUInt16: Bool { return false }
    static var isUInt32: Bool { return false }
    static var isUInt64: Bool { return false }
    static var isUInt: Bool { return false }
    static var isInt8: Bool { return false }
    static var isInt16: Bool { return false }
    static var isInt32: Bool { return false }
    static var isInt64: Bool { return false }
    static var isInt: Bool { return false }
    static var isFloat: Bool { return false }
    static var isDouble: Bool { return false }
    static var isFloat80: Bool { return false }
    static var isCGFloat: Bool { return false }

}

public extension NumericScalar where Self: BinaryInteger {
    static var isBinaryInteger: Bool { return true }
}

public extension NumericScalar where Self: BinaryFloatingPoint {
    static var isBinaryFloatingPoint: Bool { return true }
}

extension UInt8: NumericScalar {
    public static var isUInt8: Bool { return true }
}
extension UInt16: NumericScalar {
    public static var isUInt16: Bool { return true }
}
extension UInt32: NumericScalar {
    public static var isUInt32: Bool { return true }
}
extension UInt64: NumericScalar {
    public static var isUInt64: Bool { return true }
}
extension UInt: NumericScalar {
    public static var isUInt: Bool { return true }
}

extension Int8: NumericScalar {
    public static var isInt8: Bool { return true }
}
extension Int16: NumericScalar {
    public static var isInt16: Bool { return true }
}
extension Int32: NumericScalar {
    public static var isInt32: Bool { return true }
}
extension Int64: NumericScalar {
    public static var isInt64: Bool { return true }
}
extension Int: NumericScalar {
    public static var isInt: Bool { return true }
}

extension Float: NumericScalar {
    public static var isFloat: Bool { return true }
}
extension Double: NumericScalar {
    public static var isDouble: Bool { return true }
}
extension Float80: NumericScalar {
    public static var isFloat80: Bool { return true }
}
extension CGFloat: NumericScalar {
    public static var isCGFloat: Bool { return true }
}

extension BinaryInteger {

    public init?<NS: NumericScalar>(_ value: NS) {
        if NS.isUInt8 {
            self.init(clamping: value as! UInt8)
        } else if NS.isUInt16 {
            self.init(clamping: value as! UInt16)
        } else if NS.isUInt32 {
            self.init(clamping: value as! UInt32)
        } else if NS.isUInt64 {
            self.init(clamping: value as! UInt64)
        } else if NS.isUInt {
            self.init(clamping: value as! UInt)
        } else if NS.isInt8 {
            self.init(clamping: value as! Int8)
        } else if NS.isInt16 {
            self.init(clamping: value as! Int16)
        } else if NS.isInt32 {
            self.init(clamping: value as! Int32)
        } else if NS.isInt64 {
            self.init(clamping: value as! Int64)
        } else if NS.isInt {
            self.init(clamping: value as! Int)
        } else if NS.isFloat {
            self.init(value as! Float)
        } else if NS.isDouble {
            self.init(value as! Double)
        } else if NS.isFloat80 {
            self.init(value as! Float80)
        } else if NS.isCGFloat {
            self.init(value as! CGFloat)
        } else {
            print("Unable to create an instance of type '\(Self.self))' from an instance of type '\(NS.self)', with value '\(value)'")
            return nil
        }
    }

}

extension BinaryFloatingPoint {

    public init?<NS: NumericScalar>(_ value: NS) {
        if NS.isUInt8 {
            self.init(value as! UInt8)
        } else if NS.isUInt16 {
            self.init(value as! UInt16)
        } else if NS.isUInt32 {
            self.init(value as! UInt32)
        } else if NS.isUInt64 {
            self.init(value as! UInt64)
        } else if NS.isUInt {
            self.init(value as! UInt)
        } else if NS.isInt8 {
            self.init(value as! Int8)
        } else if NS.isInt16 {
            self.init(value as! Int16)
        } else if NS.isInt32 {
            self.init(value as! Int32)
        } else if NS.isInt64 {
            self.init(value as! Int64)
        } else if NS.isInt {
            self.init(value as! Int)
        } else if NS.isFloat {
            self.init(value as! Float)
        } else if NS.isDouble {
            self.init(value as! Double)
        } else if NS.isFloat80 {
            self.init(value as! Float80)
        } else if NS.isCGFloat {
            self.init(value as! CGFloat)
        } else {
            print("Unable to create an instance of type '\(Self.self))' from an instance of type '\(NS.self)', with value '\(value)'")
            return nil
        }
    }

}
