//
//  ContentView.swift
//  FirstExercise
//
//  Created by Лада Зудова on 01.10.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ScrollView(.vertical, showsIndicators: true) {
                ScrollViewReader { value in
                    VStack {
                        ForEach(0...50, id: \.self) { _ in
                            Text("Text text")
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .safeAreaInset(edge: .bottom, spacing: 0) {
                Rectangle()
                    .fill(.red)
                    .frame(height: 50)
                    .opacity(0.9)
                
            }
            .tabItem {
                Image(systemName: "star")
                Text("First")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
