//
//  Shapes.swift
//  Bullseye
//
//  Created by Andres Haro on 1/31/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                //.fill(Color.blue)
                
                .strokeBorder(Color.blue, lineWidth: 20.0)
                .frame(width: 200, height: 100.0)
                
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
