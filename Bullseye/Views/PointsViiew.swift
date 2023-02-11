//
//  PointsViiew.swift
//  Bullseye
//
//  Created by Alan Haro on 2/11/23.
//

import SwiftUI

struct PointsViiew: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PointsViiew_Previews: PreviewProvider {
    static var previews: some View {
        PointsViiew()
        PointsViiew()
            .previewLayout(.fixed(width: 568, height: 320))
        
        PointsViiew()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
