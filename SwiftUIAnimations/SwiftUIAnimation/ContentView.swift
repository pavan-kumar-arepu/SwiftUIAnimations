//
//  ContentView.swift
//  CircularMoveAnimation
//
//  Created by Pavankumar Arepu on 27/06/23.
//
//
import SwiftUI


struct ContentView: View {
    @State private var selectedButtonIndex = 0

    var body: some View {
        NavigationView {
            VStack {
                // Top Segment Control
                Picker(selection: $selectedButtonIndex, label: Text("Select View")) {
                    Text("Animation 1").tag(0)
                    Text("Animation 2").tag(1)
                    Text("Animation 3").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .navigationBarTitle(Text("Animation Examples"), displayMode: .inline) // Set navigation title display mode to inline

                // Spacer
                Spacer().frame(height: 16) // Add space between segment control and view

                // Selected view
                Group {
                    if selectedButtonIndex == 0 {
                        CombinedAnimation()
                        
               
                    } else if selectedButtonIndex == 1 {
                        FadeAnimateView()
                        
           
                    } else if selectedButtonIndex == 2 {
                        ProjectionEffect()
      
                    }
                }
                .transition(.slide) // Add transition animation when switching views
            }
        }
    }
}


//struct ContentView: View {
//    var body: some View {
//        CombinedAnimation()
//    }
//}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
