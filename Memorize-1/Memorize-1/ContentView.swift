//
//  ContentView.swift
//  Memorize-1
//
//  Created by 沙茂龙 on 2020/9/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing:10) {
            ForEach( 0..<4){ index in
                CardView(isFaceUp: true)
            }
        }
        .foregroundColor(.orange)
        .padding()
        .font(.largeTitle)
    }
}

struct CardView: View{
    var isFaceUp: Bool
    var body: some View{
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻")
            }
            else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
