//
//  ContentView.swift
//  2GIS_TEST
//
//  Created by Anton Zyabkin on 16.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print("testee")
            } label: {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
