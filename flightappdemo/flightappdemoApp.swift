//
//  flightappdemoApp.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 31.08.2024.
//

import SwiftUI

@main
struct flightappdemoApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .tint(Color.gray900)
        }
    }
}

struct MainTabView: View {
    
    @StateObject private var viewModel = FlightViewModel()
    var body: some View {
        TabView {
            PlansView()
                .tabItem {
                    Label("Plans", systemImage: "calendar")
                       
                }
                

            FlightApp()
                .environmentObject(viewModel)
                .tabItem {
                    Label("Flights", systemImage: "airplane")
                      
                }

            MeView()
                .tabItem {
                    
                    
                    Label("Me", systemImage: "person.crop.circle")
                        
                }
        }
       
        .toolbarBackground(.hidden, for: .tabBar)
    }
}

struct PlansView: View {
    var body: some View {
        Text(":)")
    }
}

struct MeView: View {
    var body: some View {
        Text(":)")
    }
}
