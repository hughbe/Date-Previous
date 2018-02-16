//
//  Date+Previous.swift
//  DatePrevious
//
//  Created by Hugh Bellamy on 16/02/2018.
//  Copyright © 2018 Hugh Bellamy. All rights reserved.
//

import Foundation

public enum DayOfWeek : Int {
    case Monday = 2
    case Tuesday = 3
    case Wednesday = 4
    case Thursday = 5
    case Friday = 6
    case Saturday = 7
    case Sunday = 1
}

public extension Date {
    public func previous(dayOfWeek: DayOfWeek, includeSelf: Bool = true) -> Date {
        var previousDate = self
        if !includeSelf {
            previousDate = Calendar.current.date(byAdding: .day, value: -1, to: previousDate, wrappingComponents: true)!
        }

        while true {
            let weekday = Calendar.current.component(.weekday, from: previousDate)
            if weekday == dayOfWeek.rawValue {
                return previousDate
            }

            previousDate = Calendar.current.date(byAdding: .day, value: -1, to: previousDate, wrappingComponents: true)!
        }
    }
}
