//
//  CardsList.swift
//  OracleMagic
//
//  Created by Fernando Martín Ortiz on 31/08/2020.
//  Copyright © 2020 Fernando Martín Ortiz. All rights reserved.
//

import SwiftUI

struct CardsListObservedObject: View {
    @EnvironmentObject private var themeProvider: ThemeProvider
    @ObservedObject private var viewModel = CardsListViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.cards) { card in
                    Text(card.name)
                        .foregroundColor(self.themeProvider.color.mainColor)
                        .listRowBackground(self.themeProvider.color.backgroundColor)
                }
            }
            
            HStack {
                Button(action: viewModel.requestCards) {
                    Text("Reload")
                        .foregroundColor(self.themeProvider.color.accentColor)
                }
                .frame(maxWidth: .infinity)
                
                Button(action: themeProvider.invert) {
                    Text("Ch. Theme")
                        .foregroundColor(self.themeProvider.color.accentColor)
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity, minHeight: 50.0)
        }
        .background(self.themeProvider.color.backgroundColor)
        .navigationBarTitle("Cards", displayMode: .inline)
    }
}
