//
//  ListingView.swift
//  LevelUp
//
//  Created by Paul Hudson on 08/08/2023.
//

import SwiftUI

struct ListingView: View {
    @EnvironmentObject var dataModel: DataModel

    var body: some View {
        NavigationStack {
            List {
                ForEach(dataModel.categories) { category in
                    Section {
                        let items = dataModel.matchingItems(for: category)
                        if items.isEmpty {
                            ContentUnavailableView("No \(category.id.lowercased()) matches \(dataModel.searchText).", systemImage: category.icon)
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(items) { item in
                                    ItemView(item: item)
                                }
                            }
                            .scrollTargetLayout()
                        }
                        .scrollTargetBehavior(.viewAligned)
                        .contentMargins(20, for: .scrollContent)
                        .listRowInsets(EdgeInsets())
                    } header: {
                        Text(dataModel.title(for: category))
                            .font(.title3.bold())
                            .textCase(.uppercase)
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .navigationTitle("🎌 Japan 2023")
            .searchable(text: $dataModel.searchText)
            .toolbar {
                Button("Erase data", systemImage: "eraser",action: dataModel.reset) 
            }
        }
    }
}

#Preview {
    ListingView()
        .environmentObject(DataModel())
}
