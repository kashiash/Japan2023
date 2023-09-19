//
//  ContentView.swift
//  LevelUp
//
//  Created by Paul Hudson on 08/08/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataModel: DataModel

    var body: some View {
        if dataModel.isLoading {
            LoadingView()
        } else {
            ListingView()
        }
    }


}

#Preview {
    ContentView()
}
