# NumericScalar
![](https://img.shields.io/badge/platforms-iOS%2010%20%7C%20tvOS%2010%20%7C%20watchOS%204%20%7C%20macOS%2010.14-red)
[![Xcode](https://img.shields.io/badge/Xcode-11-blueviolet.svg)](https://developer.apple.com/xcode)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/wltrup/NumericScalar)
![GitHub](https://img.shields.io/github/license/wltrup/NumericScalar)

## What

**NumericScalar** is a Swift Package Manager package for iOS/tvOS (10.0 and above), watchOS (4.0 and above), and macOS (10.14 and above), under Swift 5.0 and above, defining two protocols, `NumericScalar` and `ValueConvertibleNumericScalar`. 

`NumericScalar` adds a number of useful static computed properties that allow for the identification of a numeric type in terms of its explicit type. This is useful in generic algorithms that, nonetheless, sometimes need to behave differently depending on the specific numeric type at hand.

`ValueConvertibleNumericScalar` adds a function to convert an instance of a type conforming  to `NumericScalar` into another. This is easier to use and more uniform than trying to figure out which initialiser to use in any particular case.

Note: This is an *experimental* package.

```swift
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

    static var isBinaryIntegerOrBinaryFloatingPoint: Bool
    static var isNeitherBinaryIntegerNorrBinaryFloatingPoint: Bool

}

extension BinaryInteger {

    public init?<NS: NumericScalar>(_ value: NS)

}

extension BinaryFloatingPoint {

    public init?<NS: NumericScalar>(_ value: NS) 

}

public protocol ValueConvertibleNumericScalar: NumericScalar {}

public extension ValueConvertibleNumericScalar {

    func toValue<Value: NumericScalar>() -> Value? 

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
```

## Installation

**NumericScalar** is provided only as a Swift Package Manager package, because I'm moving away from CocoaPods and Carthage, and can be easily installed directly from Xcode.

## Author

Wagner Truppel, trupwl@gmail.com

## License

**NumericScalar** is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
