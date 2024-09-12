//
//  ContentView.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .symbolVariant(.circle)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
