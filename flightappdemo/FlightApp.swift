//
//  ContentView.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 31.08.2024.
//

import SwiftUI

struct FlightApp: View {
    @EnvironmentObject var flightViewModel: FlightViewModel

    var body: some View {
        NavigationView {
            VStack {
                
                    
                if flightViewModel.tickets.isEmpty {
                    EmptyStateView()
                        .environmentObject(flightViewModel)

                } else {
                    TicketListView(viewModel: flightViewModel)
                        
                }
            }
           
            

            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.gray.opacity(0.1))

            .navigationTitle("Flights")
            
            
           
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        flightViewModel.addTicket()
                    }) {
                        Image(systemName: "plus")
                            .blur(radius: flightViewModel.isDetailViewPresented ? 30 : 0)
                            .disabled(flightViewModel.isDetailViewPresented)
                    }
                }
                
            }
            
            
        }.tint(Color.gray900)
            
    }
}

#Preview {
    FlightApp()
}
