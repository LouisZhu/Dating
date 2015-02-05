# Dating

A Swift tool to simplify date and time calculation. OS X and iOS supported.

When you deal with date and time with Dating, just consider the real world years, months, days, hours, minutes and seconds. And the code will be more natural than the ordinary `NSDate` way.

Dating creates no new class and type, just extensions of `NSDate`, `NSDateComponents` and `Int`. So using Dating is simple, no need to consider modifying your existing data types or structures.


## Installation

Directly add the `Dating.swift` file to your project.

## How to use

Create a date with years, months, days, hours(optional), minutes(optional), and seconds(optional).

```swift
let dateA = NSDate(year: 2014, month: 10, day: 27)
let dateB = NSDate(year: 2014, month: 10, day: 27, hour: 3, minute: 13)
```

Calculate date use `+` and `-` operations.

```swift
let dateC = dateA + 1.year
let dateD = dateB - 25.second
```

The operations can be chained, of course.

```swift
let dateE = dateA + 2.year - 3.month + 5.day - 12.hour - 1.minute + 20.second
```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE). 

