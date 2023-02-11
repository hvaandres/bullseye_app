//
//  PointsView.swift
//  Bullseye
//
//  Created by Alan Haro on 2/11/23.
//

import SwiftUI

struct PointsView: View {
    var body: some View {
        VStack{
            InstructionText(text: "The sllider's value is")
            BigNumberText(text: "89")
            BodyText(text: "You scored 200 Points\n🎉🎊🎉")
            Button(action: {}){
                ButtonText(text: "Start New Round")
            }
            
           
        }
            .padding()
            .frame(maxWidth: 300)
            .background(Color("BackgroundColor"))
            .cornerRadius(21.0)
            .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
        PointsView()
            .previewLayout(.fixed(width: 568, height: 320))
        
        PointsView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
