//
//  CellView.swift
//  Periodic Table
//
//  Created by Kartik Narayanan on 23/04/22.
//
import SwiftUI
struct CellView: View {
    var index: Int
    @State var showDetails = false
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
            VStack (alignment: .center) {
                Text(element.AtomicNumber)
                    .font(.system(size: 10))
                Text(element.Symbol)
                    .font(.body.bold())
                Text(element.AtomicName)
                    .font(.system(size: 8))
                    .multilineTextAlignment(.center)
                Text(element.StandardState)
                    .font(.system(size: 8))
                    .multilineTextAlignment(.center)
            }


        }



    }

}
