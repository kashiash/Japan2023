//
//  LevelUpApp.swift
//  LevelUp
//
//  Created by Paul Hudson on 08/08/2023.
//

import SwiftUI

@main
struct LevelUpApp: App {
    @StateObject private var dataModel = DataModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataModel)
        }
    }
}
