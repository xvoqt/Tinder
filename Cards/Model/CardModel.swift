//
//  CardModel.swift
//  Tinder
//
//  Created by Melanie Andrade-Muñoz on 4/15/24.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String { return user.id }
}
