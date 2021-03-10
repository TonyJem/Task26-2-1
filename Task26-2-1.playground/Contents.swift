import UIKit

// Task:
let defaultValue = UserDefaults.standard

defaultValue.set(8, forKey: "Digit")
defaultValue.set(false, forKey: "LightIsOn")
defaultValue.set("iOS Trainee", forKey: "MyStatus")
defaultValue.set([6, 11, 90], forKey: "Digits")
defaultValue.set(7.904563290346863, forKey: "LongNum")

// Solution:

let digit = defaultValue.integer(forKey: "Digit")
print(digit)

let isLightOn = defaultValue.bool(forKey: "LightIsOn")
print(isLightOn)

let status = defaultValue.string(forKey: "MyStatus")
if let status = status {
    print(status)
}

let digits = defaultValue.array(forKey: "Digits")
if let digitsUnwarapped = digits {
    digitsUnwarapped.forEach { digit in
        print(digit)
    }
}

let longNumber = defaultValue.double(forKey: "LongNum")
print(longNumber)
