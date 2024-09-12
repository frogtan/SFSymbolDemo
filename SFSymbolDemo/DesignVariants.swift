//
//  DesignVariants.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/9.
//

import SwiftUI

struct DesignVariants: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
                VStack {
                    Image(systemName: "person")
                        .symbolVariant(.circle.slash)
                }.tabItem { Image(systemName: "person") }
                    .tag(0)
                
                VStack {
                    
                }.tabItem { Image(systemName: "folder") }
                    .tag(1)
            }
        }
        .padding()
    }
}
