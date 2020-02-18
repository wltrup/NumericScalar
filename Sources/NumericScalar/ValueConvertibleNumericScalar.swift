import Foundation
import CoreGraphics

// XXX Needs tests

public protocol ValueConvertibleNumericScalar: NumericScalar {}

public extension ValueConvertibleNumericScalar {

    func toValue<Value: NumericScalar>() -> Value? {
        if Value.isUInt8 {
            return UInt8(self) as? Value
        } else if Value.isUInt16 {
            return UInt16(self) as? Value
        } else if Value.isUInt32 {
            return UInt32(self) as? Value
        } else if Value.isUInt64 {
            return UInt64(self) as? Value
        } else if Value.isUInt {
            return UInt(self) as? Value
        } else if Value.isInt8 {
            return Int8(self) as? Value
        } else if Value.isInt16 {
            return Int16(self) as? Value
        } else if Value.isInt32 {
            return Int32(self) as? Value
        } else if Value.isInt64 {
            return Int64(self) as? Value
        } else if Value.isInt {
            return Int(self) as? Value
        } else if Value.isFloat {
            return Float(self) as? Value
        } else if Value.isDouble {
            return Double(self) as? Value
        } else if Value.isFloat80 {
            return Float80(self) as? Value
        } else if Value.isCGFloat {
            return CGFloat(self) as? Value
        } else {
            print("Unable to create an instance of type '\(Value.self))' from an instance of type '\(Self.self)', with value '\(self)'")
            return nil
        }
    }

}

extension UInt8: ValueConvertibleNumericScalar {}
extension UInt16: ValueConvertibleNumericScalar {}
extension UInt32: ValueConvertibleNumericScalar {}
extension UInt64: ValueConvertibleNumericScalar {}
extension UInt: ValueConvertibleNumericScalar {}

extension Int8: ValueConvertibleNumericScalar {}
extension Int16: ValueConvertibleNumericScalar {}
extension Int32: ValueConvertibleNumericScalar {}
extension Int64: ValueConvertibleNumericScalar {}
extension Int: ValueConvertibleNumericScalar {}

extension Float: ValueConvertibleNumericScalar {}
extension Double: ValueConvertibleNumericScalar {}
extension Float80: ValueConvertibleNumericScalar {}
extension CGFloat: ValueConvertibleNumericScalar {}
