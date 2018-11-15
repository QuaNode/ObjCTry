 [![Version](https://img.shields.io/cocoapods/v/ObjCTry.svg?style=flat)](http://cocoapods.org/pods/ObjCTry) [![License](https://img.shields.io/cocoapods/l/ObjCTry.svg?style=flat)](http://cocoapods.org/pods/ObjCTry) [![Platform](https://img.shields.io/cocoapods/p/ObjCTry.svg?style=flat)](http://cocoapods.org/pods/ObjCTry)

# ObjCTry

Simple code wrapper to help catching ObjC exceptions within Swift. It works simply by converting exceptioins to errors and rethrows them to allow Swift do-catch block to catch them.  

## Requirements

iOS 8.0, Swift 3.0

## Example usage

```swift
do {
try ObjC.try {
// code that throws ObjC exceptions
}
} catch {
print(error)
}
```

## Installation

### ObjCTry is available through [CocoaPods](https://cocoapods.org). 

To install it, simply add the following line to your Podfile:

```ruby
pod "ObjCTry", "~> 1.0"
```

### ObjCTry is available through [Carthage](https://github.com/Carthage/Carthage). 

To install it, simply add the following line to your Carthage file:

```ruby
github "svetam/ObjCTry" ~> 1.0
```

## Author

Svetislav Markovic (svetam.sd@gmail.com)

## License

ObjCTry is available under the MIT license. See the LICENSE file for more info.
