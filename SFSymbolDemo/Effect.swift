//
//  Effect.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/9.
//

import SwiftUI

struct Effect: View {
    var body: some View {
        List {
            NavigationLink {
                DiscreteEffect()
            } label: {
                Text("Discrete Effect")
            }
            
            NavigationLink {
                IndefiniteEffect()
            } label: {
                Text("Indefinite Effect")
            }
            
            NavigationLink {
                TransitionEffect()
            } label: {
                Text("Transition Effect")
            }
            
            NavigationLink {
                ContentTransitionEffect()
            } label: {
                Text("Content Transition Effect")
            }
        }
    }
}
