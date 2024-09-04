//
//  EmptyStateView.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 2.09.2024.
//

import SwiftUI

struct EmptyStateView: View {
    @EnvironmentObject var flightViewModel: FlightViewModel
    
    var body: some View {
        VStack(spacing: .zero) {
            VStack(spacing: .zero){
                PlaneHorizontal()
                    
                    .stroke(lineWidth: 2)
                    .rotation(Angle(degrees: -45))
                    .frame(width: 28, height: 28)
                
                    .padding(14)
                    .background(
                    RoundedRectangle(cornerRadius: 14)
                        .inset(by: 0.5) // inset value should be same as lineWidth in .stroke
                        .stroke(Color.gray200, lineWidth: 2)
                )
                
                Spacer()
                    .frame(height: 16)
                
                Text("No Flights Added Yet")
                    .foregroundStyle(Color.gray900)
                    .font(.title2)
                    .bold()
                Spacer()
                    .frame(height: 8)
                Text("Let's get started on your jet lag plan! Add your upcoming flights to begin your journey.")
                    .foregroundStyle(Color.gray600)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .fontWeight(.regular)

            }
            .padding(.horizontal, 32)
            Spacer()
                .frame(height: 24)

            Button {
                flightViewModel.addTicket()
            } label: {
                Text("Add Flight")
                    .padding(14)

                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .background(RoundedRectangle(cornerRadius: 14)
                        .foregroundStyle(Color.orange600))
            }
        }
    }
}

#Preview {
    EmptyStateView()
}
