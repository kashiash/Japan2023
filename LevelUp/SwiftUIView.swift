//
//  SwiftUIView.swift
//  LevelUp
//
//  Created by Jacek Kosinski U on 19/09/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image(systemName: "rainbow")
            .resizable()
            .scaledToFit()
        .symbolRenderingMode(.multicolor)
        .symbolEffect(.variableColor.iterative.hideInactiveLayers.reversing)
    }
}

#Preview {
    SwiftUIView().preferredColorScheme(.dark)
}
