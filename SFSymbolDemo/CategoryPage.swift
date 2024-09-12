//
//  CategoryPage.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/8.
//

import SwiftUI

struct CategoryPage: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    Basic()
                } label: {
                    Text("Basic")
                }
                
                NavigationLink {
                    FontWeightAndScale()
                } label: {
                    Text("FontWeight And Scale")
                }
                
                NavigationLink {
                    RenderMode()
                } label: {
                    Text("Render Mode")
                }
                
                NavigationLink {
                    VariableColor()
                } label: {
                    Text("Variable Color")
                }
                
                NavigationLink {
                    DesignVariants()
                } label: {
                    Text("Design Variants")
                }
                
                NavigationLink {
                    Effect()
                } label: {
                    Text("Effect")
                }
            }
        }
    }
}
