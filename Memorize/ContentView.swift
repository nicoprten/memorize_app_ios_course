//
//  ContentView.swift
//  Memorize
//
//  Created by admin on 10/03/2023.
//

import SwiftUI

struct ContentView: View {

    @State var emojiCount = 5
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]){
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
                .foregroundColor(.red)
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro")
    }
}

struct CardView: View{
    var content: String
    @State var isFaceUp: Bool = false
    
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.fill()
                    .foregroundColor(.white)
                shape.strokeBorder(lineWidth: 4)
                Text(content)
                    .font(.largeTitle)
            }else{
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}
