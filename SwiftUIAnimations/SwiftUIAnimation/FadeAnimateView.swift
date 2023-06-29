//
//  FadeAnimateView.swift
//  CircularMoveAnimation
//
//  Created by Pavankumar Arepu on 27/06/23.
//

import SwiftUI

struct FadeAnimateView: View {
    @State private var isVisible = false
    
    var body: some View {
        VStack {
            Button("Toggle") {
                withAnimation {
                    isVisible.toggle()
                }
            }
            
            if isVisible {
                Text("Fade Animation")
                    .font(.largeTitle)
                    .opacity(isVisible ? 1.0 : 0.0)
                    .animation(.easeInOut)
            }
        }
    }
}

struct FadeAnimateView_Previews: PreviewProvider {
    static var previews: some View {
        FadeAnimateView()
    }
}
