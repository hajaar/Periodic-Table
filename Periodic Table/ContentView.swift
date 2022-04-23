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
        let element = PeriodicTable.elements[index]
        ZStack {

            let emptyCell = !element.shouldShow
            let t = emptyCell ? Color.clear : element.stateColor
            t.clipShape(RoundedRectangle(cornerRadius: 8))
            if !emptyCell {
                t.overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.primary, lineWidth: 1)
            )
            }


            VStack {
                Text(element.AtomicNumber)
                    .font(.system(size: 10))
                Text(element.Symbol)
                .font(.body.bold())
                Text(element.AtomicName)
                    .font(.system(size: 8))
                Text(element.AtomicMass)
                    .font(.system(size: 8))


            }


    }

}
}

struct ContentView: View {
    var body: some View {
        ZStack {

            VStack(spacing: 2) {
                Spacer()
            ForEach(0..<9) {i in
                HStack(spacing: 2) {
                    ForEach(0..<18) {j in
                        CellView(index: 18*i+j)
                    }
                }

            }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
