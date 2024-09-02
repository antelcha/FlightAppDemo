//
//  FlightViewModel.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 2.09.2024.
//

import Foundation

class FlightViewModel: ObservableObject {
    @Published var tickets: [Ticket] = []
    @Published var selectedTicket: Ticket? = nil
    @Published var isDetailViewPresented: Bool = false

    private var ticketsDummy: [Ticket] = [
        Ticket(flights: [Flight(
            flightNumber: "TK 1001",
            airline: "Turkish Airlines",
            departureCity: "Istanbul",
            departureDate: Date.from(day: 20, month: 4, year: 2024),
            departureTime: "11:00 AM",
            arrivalCity: "London",
            arrivalDate: Date.from(day: 20, month: 4, year: 2024),
            arrivalTime: "01:30 PM",
            duration: "2h 30m"
        )]),

        Ticket(flights: [Flight(
            flightNumber: "LH 2002",
            airline: "Lufthansa",
            departureCity: "Munich",
            departureDate: Date.from(day: 20, month: 4, year: 2024),
            departureTime: "02:00 PM",
            arrivalCity: "New York",
            arrivalDate: Date.from(day: 20, month: 4, year: 2024),
            arrivalTime: "05:00 PM",
            duration: "8h 00m"
        )])
        ,
        Ticket(flights: [Flight(
            flightNumber: "AF 3003",
            airline: "Air France",
            departureCity: "Paris",
            departureDate: Date.from(day: 21, month: 4, year: 2024),
            departureTime: "09:00 AM",
            arrivalCity: "Tokyo",
            arrivalDate: Date.from(day: 21, month: 4, year: 2024),
            arrivalTime: "03:00 PM",
            duration: "13h 00m"
        )])

        , Ticket(flights: [Flight(
            flightNumber: "BA 4004",
            airline: "British Airways",
            departureCity: "London",
            departureDate: Date.from(day: 22, month: 4, year: 2024),
            departureTime: "10:00 AM",
            arrivalCity: "Dubai",
            arrivalDate: Date.from(day: 22, month: 4, year: 2024),
            arrivalTime: "08:00 PM",
            duration: "8h 00m"
        )])

        , Ticket(flights: [Flight(
            flightNumber: "EK 5005",
            airline: "Emirates",
            departureCity: "Dubai",
            departureDate: Date.from(day: 22, month: 4, year: 2024),
            departureTime: "10:00 PM",
            arrivalCity: "Sydney",
            arrivalDate: Date.from(day: 23, month: 4, year: 2024),
            arrivalTime: "06:00 AM",
            duration: "14h 00m"
        )]),

        Ticket(flights: [Flight(
                flightNumber: "EK 5005",
                airline: "Emirates",
                departureCity: "Dubai",
                departureDate: Date.from(day: 22, month: 4, year: 2024),
                departureTime: "10:00 PM",
                arrivalCity: "Sydney",
                arrivalDate: Date.from(day: 23, month: 4, year: 2024),
                arrivalTime: "06:00 AM",
                duration: "14h 00m"
            ),
            Flight(
                flightNumber: "EK 5005",
                airline: "Emirates",
                departureCity: "Dubai",
                departureDate: Date.from(day: 22, month: 4, year: 2024),
                departureTime: "10:00 PM",
                arrivalCity: "Sydney",
                arrivalDate: Date.from(day: 23, month: 4, year: 2024),
                arrivalTime: "06:00 AM",
                duration: "14h 00m"
            )]),

        Ticket(flights: [Flight(
                flightNumber: "EK 5005",
                airline: "Emirates",
                departureCity: "Dubai",
                departureDate: Date.from(day: 22, month: 4, year: 2024),
                departureTime: "10:00 PM",
                arrivalCity: "Sydney",
                arrivalDate: Date.from(day: 23, month: 4, year: 2024),
                arrivalTime: "06:00 AM",
                duration: "14h 00m"
            ),
            Flight(
                flightNumber: "EK 5005",
                airline: "Emirates",
                departureCity: "Sydney",
                departureDate: Date.from(day: 22, month: 4, year: 2024),
                departureTime: "10:00 PM",
                arrivalCity: "Dubai",
                arrivalDate: Date.from(day: 23, month: 4, year: 2024),
                arrivalTime: "06:00 AM",
                duration: "14h 00m"
            ), Flight(
                flightNumber: "EK 5005",
                airline: "Emirates",
                departureCity: "Dubai",
                departureDate: Date.from(day: 22, month: 4, year: 2024),
                departureTime: "10:00 PM",
                arrivalCity: "Sydney",
                arrivalDate: Date.from(day: 23, month: 4, year: 2024),
                arrivalTime: "06:00 AM",
                duration: "14h 00m"
            )]),
    ]

    func addTicket() {
        if let element = ticketsDummy.randomElement() {
            tickets.append(element)
            ticketsDummy.removeAll { $0.id == element.id }
        }
    }

    func removeTicket(_ ticket: Ticket) {
        tickets.removeAll { $0.id == ticket.id }
        ticketsDummy.append(ticket)
    }
    
    func selectTicket(_ ticket: Ticket) {
            selectedTicket = ticket
            isDetailViewPresented = true
        }

        func deselectTicket() {
            selectedTicket = nil
            isDetailViewPresented = false
        }
}
