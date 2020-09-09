//
//  CardsListState.swift
//  OracleMagic
//
//  Created by Fernando Martín Ortiz on 31/08/2020.
//  Copyright © 2020 Fernando Martín Ortiz. All rights reserved.
//

import SwiftUI
import Combine

//struct CardsListState: View {
//    @State private var cards: [Card] = []
//
//    private var cancellables = Set<AnyCancellable>()
//
//    var body: some View {
//        VStack {
//            List(cards) { card in
//                Text(card.name)
//            }
//            Button(action: self.requestCards) {
//                Text("Reload")
//            }
//        }
//        .navigationBarTitle("Cards")
//    }
//
//    private mutating func requestCards() {
//        cards = []
//        GetCardsRequest()
//            .execute()
//            .map(\.cards)
//            .replaceError(with: [])
//            .receive(on: DispatchQueue.main)
//            .assign(to: \.cards, on: self)
//            .store(in: &cancellables)
//    }
//}
