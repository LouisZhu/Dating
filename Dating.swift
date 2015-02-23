//
//  Dating.swift
//  
//
//  Created by Louis Zhu on 15/2/5.
//
//

import Foundation


public extension Int {
    
    private func newEmptyDateComponents() -> NSDateComponents! {
        var dateComponents = NSDateComponents()
        dateComponents.year = 0
        dateComponents.month = 0
        dateComponents.day = 0
        dateComponents.hour = 0
        dateComponents.minute = 0
        dateComponents.second = 0
        return dateComponents
    }
    
    var year: NSDateComponents {
        let components = self.newEmptyDateComponents()
        components.year = self
        return components
    }
    
    var month: NSDateComponents {
        let components = self.newEmptyDateComponents()
        components.month = self
        return components
    }
    
    var day: NSDateComponents {
        let components = self.newEmptyDateComponents()
        components.day = self
        return components
    }
    
    var hour: NSDateComponents {
        let components = self.newEmptyDateComponents()
        components.hour = self
        return components
    }
    
    var minute: NSDateComponents {
        let components = self.newEmptyDateComponents()
        components.minute = self
        return components
    }
    
    var second: NSDateComponents {
        let components = self.newEmptyDateComponents()
        components.second = self
        return components
    }
}


public extension NSDate {
    
    private convenience init(date otherDate: NSDate) {
        let timeInterval = otherDate.timeIntervalSince1970
        self.init(timeIntervalSince1970: timeInterval)
    }
    
    convenience init(year: Int, month: Int, day: Int, hour: Int = 0, minute: Int = 0, second: Int = 0) {
        let calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        components.hour = hour
        components.minute = minute
        components.second = second
        let date = calendar!.dateFromComponents(components)
        self.init(date: date!)
    }
    
}


func + (left: NSDate, right: NSDateComponents) -> NSDate {
    let calendar = NSCalendar.currentCalendar()
    var components = calendar.components(.YearCalendarUnit | .MonthCalendarUnit | .DayCalendarUnit | .HourCalendarUnit | .MinuteCalendarUnit | .SecondCalendarUnit, fromDate: left)
    components.year += right.year
    components.month += right.month
    components.day += right.day
    components.hour += right.hour
    components.minute += right.minute
    components.second += right.second
    return calendar.dateFromComponents(components)!
}


func - (left: NSDate, right: NSDateComponents) -> NSDate {
    let calendar = NSCalendar.currentCalendar()
    var components = calendar.components(.YearCalendarUnit | .MonthCalendarUnit | .DayCalendarUnit | .HourCalendarUnit | .MinuteCalendarUnit | .SecondCalendarUnit, fromDate: left)
    components.year -= right.year
    components.month -= right.month
    components.day -= right.day
    components.hour -= right.hour
    components.minute -= right.minute
    components.second -= right.second
    return calendar.dateFromComponents(components)!
}


func > (left: NSDate, right: NSDate) -> Bool {
    let timeInterval = left.timeIntervalSinceDate(right)
    return timeInterval > 0
}


func < (left: NSDate, right: NSDate) -> Bool {
    let timeInterval = left.timeIntervalSinceDate(right)
    return timeInterval < 0
}


func >= (left: NSDate, right: NSDate) -> Bool {
    return (left > right) || (left == right)
}


func <= (left: NSDate, right: NSDate) -> Bool {
    return (left < right) || (left == right)
}

