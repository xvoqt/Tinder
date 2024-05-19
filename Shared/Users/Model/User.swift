//
//  User.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/15/24.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullname: String
    let age: Int
    let bio: String
    let profileImageURLs: [String]
    let gender: String
    let occupation: String
    let sexuality: String
    let msg: String
}
