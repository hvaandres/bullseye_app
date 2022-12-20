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
        VStack {
            
            Text("🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding()
            Text(String(game.target))
                .bold()
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            // Create an HSTACK
            HStack{
                
                Text("1")
                    .bold()
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
                    .border(Color.red, width: 2)
            }
            
            // Inside of the VSTACK, Create a Button
            
            Button(action: {
                print("Hello, SwiftUI!")
                self.alertIsVisible = true
            }){
                Text("Hit Me")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
            }
            .alert(isPresented: $alertIsVisible,
                   content: {
                    var roundedValue: Int =
                Int(self.sliderValue
                    .rounded())
                return Alert(title: Text("Hello There!"), message: Text("The sider value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round"),
                        dismissButton:
                            .default(Text("Awesome!")))
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
