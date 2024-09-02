//
//  TicketView.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 2.09.2024.
//

import SwiftUI

struct TicketView: View {
    var ticketModel: Ticket

    var body: some View {
        ZStack {
            VStack(spacing: .zero) {
                ForEach(ticketModel.flights.indices, id: \.self) { index in
                    TicketShape()
                        .frame(height: 150)
                        .foregroundStyle(.white)
                        .overlay(flightDetailsOverlay(for: index))
                        .overlay(separatorOverlay(for: index), alignment: .bottom)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
    }

    @ViewBuilder
    private func flightDetailsOverlay(for index: Int) -> some View {
        VStack(spacing: 16) {
            flightInfoHeader(for: index)
            flightInfoBody(for: index)
        }
        .padding(16)
    }

    private func flightInfoHeader(for index: Int) -> some View {
        HStack {
            Image(systemName: "plus")
            HStack {
                Text(ticketModel.flights[index].flightNumber)
                Text("•")
                Text(ticketModel.flights[index].airline)
            }
            .foregroundStyle(Color.gray500)

            Spacer()

            Text(ticketModel.flights[index].duration)
                .font(.caption)
                .fontWeight(.medium)
                .padding(.horizontal, 8)
                .padding(.vertical, 2)
                .foregroundStyle(Color.orange700)
                .background(durationBackground)
        }
    }

    private var durationBackground: some View {
        RoundedRectangle(cornerRadius: 7)
            .fill(Color.orange50)
            .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(Color.orange200, lineWidth: 0.5)
            )
    }

    private func flightInfoBody(for index: Int) -> some View {
        HStack {
            flightDetailsSection(
                city: ticketModel.flights[index].departureCity,
                time: ticketModel.flights[index].departureTime,
                date: ticketModel.flights[index].departureDate,
                iconName: "arrow.up.right.circle",
                alignment: .leading
            )
            flightPathView()
            flightDetailsSection(
                city: ticketModel.flights[index].arrivalCity,
                time: ticketModel.flights[index].arrivalTime,
                date: ticketModel.flights[index].arrivalDate,
                iconName: "arrow.down.right.circle",
                alignment: .trailing
            )
        }
    }

    private func flightDetailsSection(city: String, time: String, date: Date, iconName: String, alignment: HorizontalAlignment) -> some View {
        VStack(alignment: alignment, spacing: 8) {
            HStack {
                Image(systemName: iconName)
                Text(date, formatter: DateFormatter.dayShortMonthYear)
                    .font(.footnote)
                    .fontWeight(.regular)
                    .foregroundStyle(Color.gray500)
            }

            Text(city)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(Color.gray900)

            Text(time)
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(Color.gray700)
        }
    }

    private func flightPathView() -> some View {
        ZStack {
            Line()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                .frame(height: 1)
                .foregroundStyle(Color.gray200)

            PlaneHorizontal()
                .foregroundStyle(.white)
                .frame(width: 24, height: 24)
            
            PlaneHorizontal()
                .stroke(lineWidth: 1)
                .foregroundStyle(Color.gray400)
                .frame(width: 24, height: 24)
        }
    }

    @ViewBuilder
    private func separatorOverlay(for index: Int) -> some View {
        if ticketModel.flights.count != 1 && index != (ticketModel.flights.count - 1) {
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 0.5)
                .padding(.horizontal)
                .foregroundStyle(Color.gray200)
        }
    }
}



#Preview {
    TicketView(ticketModel: Ticket(flights: [Flight(
        flightNumber: "TK 1001",
        airline: "Turkish Airlines",
        departureCity: "Istanbul",
        departureDate: Date.from(day: 20, month: 4, year: 2024),
        departureTime: "11:00 AM",
        arrivalCity: "London",
        arrivalDate: Date.from(day: 20, month: 4, year: 2024),
        arrivalTime: "01:30 PM",
        duration: "2h 30m"
    ),Flight(
        flightNumber: "TK 1001",
        airline: "Turkish Airlines",
        departureCity: "Istanbul",
        departureDate: Date.from(day: 20, month: 4, year: 2024),
        departureTime: "11:00 AM",
        arrivalCity: "London",
        arrivalDate: Date.from(day: 20, month: 4, year: 2024),
        arrivalTime: "01:30 PM",
        duration: "2h 30m"
    )]))
}
