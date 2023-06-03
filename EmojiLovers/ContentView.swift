//
//  ContentView.swift
//  EmojiLovers
//
//  Created by Jeri Rao on 2023/6/3.
//

import SwiftUI

//<<<<<<< HEAD
enum Emoji: String, CaseIterable {
    case 😄, 😆, 😅, 😫, 😡
}

struct ContentView: View {
    @State var selection: Emoji = .😄
    var body: some View{
        NavigationView{
        
        VStack{
                        Text(selection.rawValue)
                            .font(.system(size:150))
                        
                        Picker("Select Emoji", selection: $selection){
                            ForEach(Emoji.allCases, id: \.self){ emoji in
                                Text(emoji.rawValue)
                            }
                            
                        }
                        .pickerStyle(.segmented)
                    }
                    .navigationTitle("Emoji Lovers!")
                    .padding()

        }
    }
}
 
//=======
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}
//>>>>>>> 1bcd3734eb46270647aa900d31833504b0937da1

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
