//
//  Basic.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/8.
//

import SwiftUI

struct Basic: View {
    var body: some View {
        VStack {
            Image(systemName: "rainbow")
                .imageScale(.large)
                .symbolRenderingMode(.multicolor)
        }
    }
}
