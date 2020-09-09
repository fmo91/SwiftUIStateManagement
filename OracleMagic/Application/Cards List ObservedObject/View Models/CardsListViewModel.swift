//
//  CardsListViewModel.swift
//  OracleMagic
//
//  Created by Fernando Martín Ortiz on 31/08/2020.
//  Copyright © 2020 Fernando Martín Ortiz. All rights reserved.
//

import Foundation
import Combine

final class CardsListViewModel: ObservableObject {
    @Published var cards: [Card] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        requestCards()
    }
    
    func requestCards() {
        cards = []
        GetCardsRequest()
            .execute()
            .map(\.cards)
            .replaceError(with: [])
            .receive(on: DispatchQueue.main)
            .assign(to: \.cards, on: self)
            .store(in: &cancellables)
    }
}
