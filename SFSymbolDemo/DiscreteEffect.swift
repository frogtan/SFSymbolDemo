//
//  DiscreteEffect.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/12.
//

import SwiftUI

struct DiscreteEffect: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        Image(systemName: "heart")
            .symbolVariant(.fill)
            .font(.largeTitle)
            .symbolEffect(.pulse, value: isAnimating)
        
        Button("Toggle Animation") {
            isAnimating.toggle()
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    DiscreteEffect()
}
