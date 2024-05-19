//
//  CardService.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/15/24.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0) })
    }
}

