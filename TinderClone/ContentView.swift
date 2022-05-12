//
//  ContentView.swift
//  TinderClone
//
//  Created by Paulo Henrique Gomes da Silva on 04/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // top stack
            HStack {
                Button(action:{}) {
                    Image("profile")
                }
                Spacer()
                Button(action:{}) {
                    Image("tinder-icon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 45)
                }
                Spacer()
                Button(action:{}) {
                    Image("chats")
                }
            }.padding(.horizontal)
            
            ZStack {
                ForEach(Card.data.reversed()) { card in
                    CardView(card: card).padding(8)
                }
            }
            
            // card
            HStack(spacing: 0) {
                
                Button(action:{}){
                    Image("refresh")
                }
                Button(action:{}){
                    Image("dismiss")
                }
                Button(action:{}){
                    Image("super_like")
                }
                Button(action:{}){
                    Image("like")
                }
                Button(action:{}){
                    Image("boost")
                    
                }
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    // MARK: - Drawing Constants
    let cardGradient = Gradient(
        colors:
            [
                Color.black.opacity(0),
                Color.black.opacity(0.5)
            ]
    )
    
    @State var card: Card
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            Image(card.imageName).resizable()
            LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .bottom)
            VStack {
                Spacer()
                VStack(alignment: .leading) {
                    HStack {
                        Text(card.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(String(card.age))
                            .font(.title)
                    }
                    Text(card.bio)
                    
                }
            }
            .padding()
            .foregroundColor(.white)
        }
        .cornerRadius(8)
        
        // ZStack follows the coordinate of the card model
        .offset(x: card.x, y: card.y)
        .rotationEffect(.init(degrees: card.degree))
        
        // Gesture regonizer and updates the coordinate values of the model card
        .gesture(
            
            DragGesture()
            
                .onChanged { value in
                    withAnimation(.default) {
                        card.x = value.translation.width
                        card.y = value.translation.height
                        card.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                    }
                }
                
                .onEnded { value in
                    
                }
            }
            }
        )
    }
}
