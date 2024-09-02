//
//  TicketDetailView.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 2.09.2024.
//

import SwiftUI

struct TicketDetailView: View {
    var ticket: Ticket
    @Binding var isDetailViewPresented: Bool
    @EnvironmentObject var flightViewModel: FlightViewModel

    var body: some View {
        ZStack {
            Color.black.opacity(0.1).ignoresSafeArea()

            VStack {
                TicketView(ticketModel: ticket)
                Button(action: {
                    isDetailViewPresented = false
                    flightViewModel.removeTicket(ticket)
                    
                }) {
                    Text("Remove Flight")
                        .foregroundStyle(Color.red900)
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 14)
                                .foregroundStyle(Color.red100)
                        )
                }
            }
            .padding()
        }
    }
}
