//
//  IndefiniteEffect.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/12.
//

import SwiftUI

struct IndefiniteEffect: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        Image(systemName: "heart")
            .symbolVariant(.fill)
            .font(.largeTitle)
            .symbolEffect(.pulse, isActive: isActive)
        
        Button("Toggle Animation") {
            isActive.toggle()
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    IndefiniteEffect()
}
