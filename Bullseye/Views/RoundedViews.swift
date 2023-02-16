//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Andres Haro on 2/2/23.
//

import SwiftUI

struct RoundedViewSroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"),
                                  lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundRectTextView: View {
    var text: String
    var body: some View {
       Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: Constants.General.roundedRectViewWidth, height: Constants.General.roundedRectViewHeight)
            .foregroundColor(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundedRectCornerRadius)
                    .stroke(lineWidth: 2.0)
                    .foregroundColor(Color("ButtonStrokeColor"))
            )
    }
}

struct RoundedTextView: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLenght, height: Constants.General.roundedViewLenght)
            .overlay(
                Circle()
                    .strokeBorder(Color("LeaderBoardRowColor"),
                                  lineWidth: Constants.General.strokeWidth)
            )
    }
    
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 10) {
            RoundedViewSroked(systemName: "arrow.counterclockwise")
            RoundedViewFilled(systemName: "list.dash")
            RoundRectTextView(text: "100")
            RoundedTextView(text: "1")
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
