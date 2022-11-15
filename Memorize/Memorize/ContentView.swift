//
//  ContentView.swift
//  Memorize
//
//  Created by Josan Johnata Paixao Pontes on 09/11/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚀", "🚛", "✈️", "🛸", "🚗", "🚕", "🚙", "🚌",
    "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚜"]
    @State var emojiCount = 4
    
    var body: some View {
        VStack{
            HStack {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
                        ForEach(emojis[0..<emojiCount], id: \.self) { emojis in
                            CardView(content: emojis).aspectRatio(2/3, contentMode: .fit)
                        }
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                add
                Spacer()
                remove
            }
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding(.horizontal)
    }
    
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}











// This is for run preview window

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
