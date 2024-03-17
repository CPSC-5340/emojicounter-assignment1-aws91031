//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.

import SwiftUI

var emojis = ["🤣", "😜", "😀", "🤩", "😂"]
              
struct ContentView: View {
    @State var counter = 0
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(0 ..< 5) {
                        value in
                            ActionItem(data : emojis[value])
                        }
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ActionItem: View {
    
    @State var counter = 0
    var data : String
    
    var body: some View {
        HStack {
            Text(data +  " Counter: ")
            Text("\(counter)")
            Spacer()
            Image(systemName: "plus")
                .imageScale(.large)
                .onTapGesture {
                    counter += 1
                }
            Image(systemName: "minus")
                .imageScale(.large)
                .onTapGesture {
                    counter -= 1
                }
        }
        .padding()
        .foregroundColor(.accentColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
