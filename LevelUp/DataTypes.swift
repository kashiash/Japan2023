//
//  DataTypes.swift
//  LevelUp
//
//  Created by Paul Hudson on 08/08/2023.
//

import Foundation

struct Category: Decodable, Identifiable {
    var id: String
    var icon: String
    var items: [Item]
}

struct Item: Decodable, Identifiable {
    var id: String
    var description: String
}
