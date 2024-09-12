//
//  VariableColor.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/9.
//

import SwiftUI

struct VariableColor: View {
    
    @State private var value: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("\(value)")
                
                Slider(value: $value)
                
                Image(systemName: "speaker.wave.3", variableValue: value)
            }
            
             HStack{
                 Image(systemName: "chart.bar.fill", variableValue: 0.3)
                 Image(systemName: "chart.bar.fill", variableValue: 0.6)
                 Image(systemName: "chart.bar.fill", variableValue: 1.0)
             }
        }
        .padding()
        .font(.system(.largeTitle))
    }
}
