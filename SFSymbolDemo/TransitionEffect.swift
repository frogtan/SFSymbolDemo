//
//  TransitionEffect.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/12.
//

import SwiftUI

struct TransitionEffect: View {
    @State private var isActive: Bool = false
    @State private var isActive2: Bool = false
    
    var body: some View {
        VStack {
            if isActive {
                Image(systemName: "heart")
                    .symbolVariant(.fill)
                    .font(.largeTitle)
                    .transition(.symbolEffect(.appear))
            }
            
            Button("Toggle Animation") {
                isActive.toggle()
            }
            .buttonStyle(.bordered)
        }
        
        VStack {
            Image(systemName: "heart")
                .symbolVariant(.fill)
                .font(.largeTitle)
                .symbolEffect(.appear, isActive: isActive2)
            
            Button("Toggle Animation") {
                isActive2.toggle()
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    TransitionEffect()
}
