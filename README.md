SwiftObjcCocoapodsExample
=========================

Swift ,Objective-C and Cocoapods mix and match example

It demonstrated :
* Swift calling Swift function 
* Swift calling Objective-C function
* Objective-C calling Swift function
* Swift calling Objective-C function from Swift function
* and integrated Cocoapods with powerful libs created by Objective-C

#ViewController.swift
```swift
// call Swift
SwiftIPManager.getIP()

// call ObjC
ObjcIPManager.getIP()

// from Objc call Swift
ObjcIPManager.getIPFromSwift()
```
