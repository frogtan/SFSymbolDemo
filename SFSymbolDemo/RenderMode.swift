//
//  RenderMode.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/8.
//

import SwiftUI

struct RenderMode: View {
    var body: some View {
        List {
            Section("单色模式(monochrome)") {
                Image(systemName: "cloud.sun.rain.fill")
                    .symbolRenderingMode(.monochrome)
                    .foregroundStyle(.yellow)
            }
            
            Section("调色板模式(palette)") {
                Image(systemName: "cloud.sun.rain.fill")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.yellow, .blue, .red)
            }
            
            Section("分层模式(hierarchical)") {
                Image(systemName: "cloud.sun.rain.fill")
                    .symbolRenderingMode(.hierarchical)
                    .foregroundStyle(.yellow)
                
                
                Image(systemName: "cloud.sun.rain.fill")
                    .symbolRenderingMode(.hierarchical)
                    .foregroundStyle(.yellow, .blue, .red)
            }
            
            Section("多色模式(multicolor)") {
                Image(systemName: "cloud.sun.rain.fill")
                    .symbolRenderingMode(.multicolor)
                
                Image(systemName: "cloud.sun.rain.fill")
                    .symbolRenderingMode(.multicolor)
                    .foregroundStyle(.yellow, .blue, .red)
            }
        }
    }
}
