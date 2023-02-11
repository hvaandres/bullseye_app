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
                .frame(width: 35.0)
            
        }
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        HStack{
            
            Text(text)
                .bold()
                .foregroundColor(Color("TextColor"))
                .kerning(1.5)
                .font(.caption)
            
        }
    }
}

struct BodyText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(.white)
            .cornerRadius(12.0)
        
    }
}





struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Introduction")
            BigNumberText(text: "52")
            SliderLabelText(text: "1")
            LabelText(text: "9")
            BodyText(text: "You scored 200 Points\n🎉🎊🎉")
            ButtonText(text: "Start New Round")
            
        }
        .padding()
        
    }
}
