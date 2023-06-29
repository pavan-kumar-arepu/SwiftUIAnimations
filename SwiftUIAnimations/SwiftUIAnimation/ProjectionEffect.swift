//
//  NumberListView.swift
//  CircularMoveAnimation
//
//  Created by Pavankumar Arepu on 27/06/23.
//

import SwiftUI

struct ProjectionEffect: View {
    var numbers: [Int] = Array(1...100)
    
    var body: some View {
        List(numbers, id: \.self) { number in
            Text("\(number)")
                .font(.system(size: 20))
        }
        .frame(width: 200, height: 400) // Adjust the size according to your requirements
        .projectionEffect(ProjectionTransform(CATransform3D(m11: 1, m12: 0, m13: 0, m14: 0,
                                                            m21: 0, m22: 0.5, m23: 0, m24: 0,
                                                            m31: 0, m32: 0, m33: 1, m34: 0,
                                                            m41: 0, m42: 0, m43: 0, m44: 1)))
    }
}
