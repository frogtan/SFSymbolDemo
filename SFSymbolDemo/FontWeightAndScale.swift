//
//  FontWeightAndScale.swift
//  SFSymbolDemo
//
//  Created by Frog on 2024/9/8.
//

import SwiftUI
import Combine

struct FontWeightAndScale: View {
    struct FontWeightItem {
        var name: String
        var weight: Font.Weight
    }
    
    struct ImageScaleItem {
        var name: String
        var scale: Image.Scale
    }
    
    var fontWeightItems: [FontWeightItem] = [
        .init(name: "ultraLight", weight: .ultraLight),
        .init(name: "thin", weight: .thin),
        .init(name: "light", weight: .light),
        .init(name: "regular", weight: .regular),
        .init(name: "medium", weight: .medium),
        .init(name: "semibold", weight: .semibold),
        .init(name: "bold", weight: .bold),
        .init(name: "heavy", weight: .heavy),
        .init(name: "black", weight: .black)
    ]
    
    var imageScaleItems: [ImageScaleItem] = [
        .init(name: "small", scale: .small),
        .init(name: "medium", scale: .medium),
        .init(name: "large", scale: .large)
    ]
    
    @State private var selectedWeightItem: FontWeightItem = .init(name: "ultraLight", weight: .ultraLight)
    @State private var selectedScaleItem: ImageScaleItem = .init(name: "small", scale: .small)
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text("Font Weight")
                
                VStack {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], alignment: .leading, spacing: 10) {
                        ForEach(fontWeightItems, id: \.name) { weightItem in
                            Button(weightItem.name) {
                                selectedWeightItem = weightItem
                            }
                            .padding()
                            .background(selectedWeightItem.name == weightItem.name ? .black.opacity(0.1) : .clear)
                            .clipShape(.rect(cornerRadius: 16))
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            
            HStack(alignment: .top) {
                Text("Image Scale")
                
                VStack {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], alignment: .leading, spacing: 10) {
                        ForEach(imageScaleItems, id: \.name) { scaleItem in
                            Button(scaleItem.name) {
                                selectedScaleItem = scaleItem
                            }
                            .padding()
                            .background(selectedScaleItem.name == scaleItem.name ? .black.opacity(0.1) : .clear)
                            .clipShape(.rect(cornerRadius: 16))
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            

            
            VStack {
                Label("Loading...", systemImage: "progress.indicator")
                    .font(.title)
                    .fontWeight(selectedWeightItem.weight)
                    .imageScale(selectedScaleItem.scale)
                
                Image(systemName: "progress.indicator")
                    .font(Font.system(size: 20, weight: .bold))
                    .foregroundStyle(.cyan)
            }
            
            Spacer()
        }
        .padding()
    }
}
