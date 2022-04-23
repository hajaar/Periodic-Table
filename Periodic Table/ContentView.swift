//
//  ContentView.swift
//  Periodic Table
//
//  Created by Kartik Narayanan on 23/04/22.
//

import SwiftUI

struct CellView: View {
    var index: Int
    var body: some View {
        ZStack {
            Color(hex: PeriodicTable.elements[index].CPKHexColor)
            let a = PeriodicTable.elements[index].Symbol
            Text(a)
        }



    }

}

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
            ForEach(0..<9) {i in
                HStack {
                    ForEach(0..<18) {j in
                        CellView(index: 18*i+j)


                    }
                }

            }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
