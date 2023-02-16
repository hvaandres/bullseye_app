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
            BackgroundView(game: $game)
            VStack {
                
                // Struct was created at the bottom of this file
                // We bind this options to have more clean code
                InstructionsView(game: $game)
                    .padding(.bottom, alertIsVisible ? 0 : 100)
                
                if alertIsVisible {
                    PointsView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                        .transition(.scale)
                } else {
                    HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                        .transition(.scale)
                }
            }
            if !alertIsVisible {
                SliderView(sliderView: $sliderValue)
                    .transition(.scale)
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

struct SliderView: View {
    @Binding var sliderView: Double
    var body: some View{
        HStack{
            SliderLabelText(text: "1")
            
            Slider(value: $sliderView, in: 1.0...100.0)
                .foregroundColor(Color("TextColor"))
            SliderLabelText(text: "100")
        }
        .padding()
    }
}

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    var body: some View{
        Button(action: {
            withAnimation {
                self.alertIsVisible = true
            }
            
            
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
        .foregroundColor(Color.white)
        .cornerRadius(Constants.General.roundedRectCornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
                .strokeBorder(Color.white, lineWidth: Constants.General.strokeWidth)
            
        )
        .font(.title3)
        
        .clipShape(Capsule())
        
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
