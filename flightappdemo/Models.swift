//
//  Models.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 2.09.2024.
//

import Foundation


class Ticket: Identifiable {
    var id = UUID()
    var flights: [Flight]

    init(flights: [Flight]) {
        self.flights = flights
    }
}

class Flight: Identifiable {
    var id = UUID()
    var flightNumber: String
    var airline: String
    var departureCity: String
    var departureDate: Date
    var departureTime: String
    var arrivalCity: String
    var arrivalDate: Date
    var arrivalTime: String
    var duration: String

    init(flightNumber: String, airline: String, departureCity: String, departureDate: Date, departureTime: String, arrivalCity: String, arrivalDate: Date, arrivalTime: String, duration: String) {
        self.flightNumber = flightNumber
        self.airline = airline
        self.departureCity = departureCity
        self.departureDate = departureDate
        self.departureTime = departureTime
        self.arrivalCity = arrivalCity
        self.arrivalDate = arrivalDate
        self.arrivalTime = arrivalTime
        self.duration = duration
    }
}

