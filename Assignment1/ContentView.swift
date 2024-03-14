//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Emoji {
    var emoji: String
    var counter: Int
}

var emojis = [
    Emoji(emoji: "🤣", counter: 0),
    Emoji(emoji: "😜", counter: 0),
    Emoji(emoji: "😀", counter: 0),
    Emoji(emoji: "🤩", counter: 0),
    Emoji(emoji: "😂", counter: 0)
]

//All 5 counters increment/decrement at the same time
/*struct ContentView: View {
    @State var counter = 0
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(0 ..< 5) {
                        value in HStack {
                            Text(emojis[value].emoji + "  Counter: \(counter)")
                            Image(systemName: "plus")
                                .imageScale(.large)
                                .onTapGesture {
                                    counter += 1
                                }
                                .buttonStyle(BorderlessButtonStyle())
                            Image(systemName: "minus")
                                .imageScale(.large)
                                .onTapGesture {
                                    counter -= 1
                                }
                                .buttonStyle(BorderlessButtonStyle())
                        }
                    }
                }
                
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}*/

//Buttons do not affect the counter
/*struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(0 ..< 5) {
                        value in HStack {
                            Text(emojis[value].emoji +
                                 "  Counter: \(emojis[value].counter)")
                            Image(systemName: "plus")
                                .imageScale(.large)
                                .onTapGesture {
                                    emojis[value].counter += 1
                                }
                                .buttonStyle(BorderlessButtonStyle())
                            Image(systemName: "minus")
                                .imageScale(.large)
                                .onTapGesture {
                                    emojis[value].counter -= 1
                                }
                                .buttonStyle(BorderlessButtonStyle())
                        }
                    }
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}*/

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(0 ..< 5) {
                        value in HStack {
                            Text(emojis[value].emoji +
                                 "  Counter: \(emojis[value].counter)")
                            /*Button(action: {
                                emojis[value].counter += 1
                            }) {
                                Image(systemName: "plus")
                            }.buttonStyle(BorderlessButtonStyle())*/
                            Button {
                                emojis[value].counter += 1
                            } label: {
                                Image(systemName: "plus")
                            }.buttonStyle(BorderlessButtonStyle())
                            Button(action: {
                                emojis[value].counter -= 1
                            }) {
                                Image(systemName: "minus")
                            }.buttonStyle(BorderlessButtonStyle())

                        }
                    }
                }
            }
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
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

/*struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    ActionItem()
                    ActionItem2()
                    ActionItem3()
                    ActionItem4()
                    ActionItem5()
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Emoji Counter")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}*/



/*struct ActionItem: View {
    
    @State var counter = 0
    
    var body: some View {
        HStack {
            Text("🤣 Counter: ")
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

struct ActionItem2: View {
    
    @State var counter = 0
    
    var body: some View {
        HStack {
            Text("😜 Counter: ")
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

struct ActionItem3: View {
    
    @State var counter = 0
    
    var body: some View {
        HStack {
            Text("😀 Counter: ")
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

struct ActionItem4: View {
    
    @State var counter = 0
    
    var body: some View {
        HStack {
            Text("🤩 Counter: ")
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

struct ActionItem5: View {
    
    @State var counter = 0
    
    var body: some View {
        HStack {
            Text("😂 Counter: ")
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
}*/
