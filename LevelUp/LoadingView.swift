//
//  LoadingView.swift
//  LevelUp
//
//  Created by Paul Hudson on 08/08/2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "antenna.radiowaves.left.and.right")
                .font(.system(size: 72))

            Text("Loading")
                .font(.title3)
        }

    }
}

#Preview {
    LoadingView()
}
