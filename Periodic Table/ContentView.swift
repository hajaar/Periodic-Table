//
//  ContentView.swift
//  Periodic Table
//
//  Created by Kartik Narayanan on 23/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("\(PeriodicTable.elements[0].AtomicMass)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
