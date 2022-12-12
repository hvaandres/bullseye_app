//
//  ContentView.swift
//  Bullseye
//
//  Created by Andres Haro on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var whoIsThereIsVisible: Bool = false
    
    var body: some View {
        
        // The SwiftView will be wraped into a VSTACK
        VStack {
            
            Text("🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding()
            Text("89")
                .bold()
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            
            // Create an HSTACK
            HStack{
                
                Text("1")
                    .bold()
                Slider(value:
                        .constant(70), in: 1.0...100.0)
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
                return Alert(title: Text("Hello There!"), message: Text("This is there"), dismissButton: .default(Text("Awesome!")))
            })
            
            Button(action: {
                print("Who, is there!")
                self.whoIsThereIsVisible = true
            }){
                Text("Who is There!")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
            }
            .alert(isPresented: $whoIsThereIsVisible,
                   content: {
                return Alert(title: Text("Who is there!"), message: Text("Little Old One"), dismissButton: .default(Text("Little Old One Who?")))
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
