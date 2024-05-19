//
//  CardsViewModel.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/15/24.
//

import Foundation

@MainActor
class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    @Published var buttonSwipeAction: SwipeAction?
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task { await fetchCardModels() }
    }
    
    func fetchCardModels() async {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print("debug this shit later")
        }
    }
    
    func removeCard(_ card: CardModel) {
        guard let index = cardModels.firstIndex(where: { $0.id == card.id}) else { return }
        cardModels.remove(at: index)
        
        if cardModels.isEmpty {
            Task {
                await fetchCardModels()
            }
        }
    }
}
