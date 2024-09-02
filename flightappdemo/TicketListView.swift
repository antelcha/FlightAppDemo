//
//  TicketListView.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 2.09.2024.
//

import SwiftUI

struct TicketListView: View {
    @ObservedObject var viewModel: FlightViewModel
    @Namespace private var animation

    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(viewModel.tickets) { ticket in
                        TicketView(ticketModel: ticket)
                            .onTapGesture {
                                viewModel.selectTicket(ticket)
                            }
                    }
                }
                .padding()
            }
            .blur(radius: viewModel.isDetailViewPresented ? 20 : 0)
            .disabled(viewModel.isDetailViewPresented)

            // Overlay a semi-transparent background to block interactions
            if viewModel.isDetailViewPresented {
                Rectangle()
                    .fill(Color.black.opacity(0.5)) // Use a semi-transparent color
                    .ignoresSafeArea()
                    .onTapGesture {
                        viewModel.deselectTicket() // Deselect ticket when tapping outside
                    }
            }

            if let ticket = viewModel.selectedTicket, viewModel.isDetailViewPresented {
                TicketDetailView(ticket: ticket, isDetailViewPresented: $viewModel.isDetailViewPresented)
                    .environmentObject(viewModel)
                    .zIndex(1)
                    .onTapGesture {
                        viewModel.deselectTicket()
                    }
            }
        }

        .animation(.snappy, value: viewModel.isDetailViewPresented)
    }
}
