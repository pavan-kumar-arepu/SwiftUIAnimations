//
//  CombinedAnimation.swift
//  CircularMoveAnimation
//
//  Created by Pavankumar Arepu on 27/06/23.
//

import SwiftUI

struct CombinedAnimation: View {
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Button("Animate") {
                withAnimation(Animation.easeInOut(duration: 4.0).repeatForever()) {
                    isAnimating.toggle()
                }
            }
            
            Spacer()
            
            Image(systemName: "star.fill")
                .font(.system(size: 100))
                .scaleEffect(isAnimating ? 2.0 : 1.0)
                .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                .animation(.linear(duration: 4.0))
            Spacer()
        }
    }
}

struct CombinedAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CombinedAnimation()
    }
}
