//
//  TextViews.swift
//  Bullseye
//
//  Created by Andres Haro on 1/14/23.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .kerning(2.0)
            .font(.footnote)
            .multilineTextAlignment(.center)
            .foregroundColor(Color("TextColor"))
    }
}
struct BigNumberText: View {
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        HStack{
            
            Text(text)
                .bold()
                .foregroundColor(Color("TextColor"))
            
        }
    }
}





struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Introduction")
            BigNumberText(text: "52")
            SliderLabelText(text: "1")
        }
        
    }
}
