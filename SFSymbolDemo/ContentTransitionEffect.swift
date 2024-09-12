//
//  ContentTransitionEffect.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/12.
//

import SwiftUI

struct ContentTransitionEffect: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        Image(systemName: isOn ? "lightswitch.on" : "lightswitch.off")
            .symbolVariant(.fill)
            .font(.largeTitle)
            .contentTransition(.symbolEffect(.replace))
        
        Button("Toggle Animation") {
            isOn.toggle()
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    ContentTransitionEffect()
}
