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
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
