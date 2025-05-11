//
//  ContentView.swift
//  Backend Process Animation
//
//  Created by Jörg Klausewitz on 11.05.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    
    var body: some View {
        
        Image(systemName: "arrow.clockwise.circle")
            .rotationEffect(.degrees(rotation))
            .onAppear{
                withAnimation(Animation.linear(duration: 1)
                    .repeatForever(autoreverses: false)){
                        rotation = 360
                    }
            }
    }
}

#Preview {
    ContentView()
}
