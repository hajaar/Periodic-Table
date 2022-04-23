//
//  CellView.swift
//  Periodic Table
//
//  Created by Kartik Narayanan on 23/04/22.
//
import SwiftUI
struct CellView: View {
    var index: Int
    var propertySelection = 1
    var element: Element {
        return PeriodicTable.elements[index]
    }
    var emptyCell: Bool {
        return !element.shouldShow
    }

    var body: some View {

        ZStack {
            let t = getColor()
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
                    .font(.system(size: 8).bold())
                    .multilineTextAlignment(.center)
                Text(getBottomInformation())
                    .font(.system(size: 8))
                    .multilineTextAlignment(.center)
            }
        }
    }
    func getColor() -> Color {
        switch propertySelection {
        case 1:
            return emptyCell ? Color.clear : element.groupBlockColor
        case 2:
            return emptyCell ? Color.clear : element.stateColor
        case 3:
            return emptyCell ? Color.clear : Color.green.opacity((Double(element.AtomicMass)!)/295.216)
        case 4:
            return emptyCell ? Color.clear : Color.red.opacity((Double(element.BoilingPoint) ?? 0)/5869)
        case 5:
            return emptyCell ? Color.clear : Color.gray.opacity((Double(element.Density) ?? 0)/22.57)
        default:
            return emptyCell ? Color.clear : element.stateColor
        }
    }
    func getBottomInformation() -> String {
        switch propertySelection {
        case 1:
            return element.GroupBlock
        case 2:
            return element.StandardState
        case 3:
            return element.AtomicMass
        case 4:
            return element.BoilingPoint
        case 5:
            return element.Density
        default:
            return element.StandardState
        }
    }

}
