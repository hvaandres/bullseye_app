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
                .frame(width: 100.0, height: 100.0)
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
