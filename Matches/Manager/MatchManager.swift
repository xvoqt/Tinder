//
//  MatchManager.swift
//  Tinder
//
//  Created by Melanie Andrade-Muñoz on 4/16/24.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    @Published var matchedUser: User?
    
    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()
        
        if didMatch {
            matchedUser = user
        }
    }
 }
