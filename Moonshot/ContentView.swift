//
//  ContentView.swift
//  Moonshot
//
//  Created by Юрий on 24.02.2024.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("Detail View")
            } label: {
                VStack {
                    Text("This is the label")
                    Text("So is this")
                    Image(systemName: "face.smiling")
                }
                .font(.largeTitle)
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
