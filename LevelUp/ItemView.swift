//
//  ItemView.swift
//  LevelUp
//
//  Created by Paul Hudson on 08/08/2023.
//

import SwiftUI

struct ItemView: View {
    @EnvironmentObject var dataModel: DataModel
    var item: Item

    var body: some View {
        ZStack(alignment: .bottom) {
            Image(item.id)
                .resizable()
                .scaledToFill()
                .frame(height: 400)

            VStack(spacing: 0) {
                Rectangle()
                    .fill(.white)
                    .frame(height: 3)

                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(item.id)

                        Text(item.description)
                            .lineLimit(2, reservesSpace: true)
                            .font(.body)
                    }

                    Spacer()

                    Button(dataModel.count(for: item), systemImage: "hand.thumbsup") {
                        dataModel.add(to: item)
                    }
                    .buttonRepeatBehavior(.enabled)
                    .buttonStyle(.plain)
                }
                .font(.title3.bold())
                .padding(10)
                .padding(.horizontal, 10)
                .background(.blue.gradient)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
            }
        }
        .clipShape(.rect(cornerRadius: 25))
        .shadow( radius: 2)
        .padding(4)
        .containerRelativeFrame(.horizontal)
    }
}

#Preview {
    ItemView(item: Item(id: "Go Go Curry", description: "Excellent curry and rice."))
        .environmentObject(DataModel())
}
