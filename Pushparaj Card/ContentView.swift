//
//  ContentView.swift
//  Pushparaj Card
//
//  Created by Pushparaj Samant on 18/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("pushparaj")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Pushparaj Samant")
                    .bold()
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                .padding()
                Text("Tech Lead")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
//                ZStack {
//                    RoundedRectangle(cornerRadius: 25)
//                        .frame(height: 40, alignment: .center)
//                        .foregroundColor(.white)
//                    Text("+65 90054684")
//                        .foregroundColor(.black)
//                }
                InfoView(text: "+65 90054685", imageName: "phone.fill")
                InfoView(text: "samant.pushparaj@gmail.com", imageName: "envelope.fill")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice.init(rawValue: "iPhone 13"))
    }
}
