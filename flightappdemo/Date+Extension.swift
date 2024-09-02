//
//  Date+Extension.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 2.09.2024.
//

import Foundation

extension Date {
    static func from(day: Int, month: Int, year: Int) -> Date {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        return calendar.date(from: dateComponents) ?? Date()
    }
}

extension DateFormatter {
    static var dayShortMonthYear: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy" // Day, short month, and year
        return formatter
    }
}

