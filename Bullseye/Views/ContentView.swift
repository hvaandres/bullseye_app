//
//  ContentView.swift
//  Bullseye
//
//  Created by Andres Haro on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    var body: some View {
        
        // The SwiftView will be wraped into a VSTACK
        
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                // Struct was created at the bottom of this file
                // We bind this options to have more clean code
                InstructionsView(game: $game)
                
                // Create an HSTACK
                HStack{
                    
                    Text("1")
                        .bold()
                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                        .foregroundColor(Color("TextColor"))
                    Text("100")
                        .bold()
                        .border(Color.red, width: 2)
                        .foregroundColor(Color("TextColor"))
                }
                
                // Inside of the VSTACK, Create a Button
                
                Button(action: {
                    print("Hello, SwiftUI!")
                    self.alertIsVisible = true
                }){
                    Text("Hit Me")
                        .bold()
                        .font(.title3)
                }
                .foregroundColor(.white)
                .padding()
                .background(
                    ZStack {
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    }
                )
                
                .clipShape(Capsule())
                .alert(isPresented: $alertIsVisible, content: {
                    let roundedValue = Int(sliderValue.rounded())
                    return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
                })
                
            }
        }
        
    }
}

struct InstructionsView: View {
    @Binding var game: Game
    var body: some View{
        VStack{
            InstructionText(text: "🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            BigNumberText(text: String(game.target))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        
        ContentView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
