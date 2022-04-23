    //
    //  DetailView.swift
    //  Periodic Table
    //
    //  Created by Kartik Narayanan on 23/04/22.
    //

import Foundation
import SwiftUI
struct DetailView: View {
    var index: Int
    var body: some View {
        let element = PeriodicTable.elements[index]

        ZStack {
            let c = element.stateColor == .clear ? Color.white : element.stateColor
            c
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.primary, lineWidth: 1)
                )
            VStack (alignment: .center, spacing: 8) {
                Text(element.AtomicNumber)
                    .font(.body)
                Text(element.Symbol)
                    .font(.largeTitle.bold())
                Text(element.AtomicName)
                    .font(.title3)
                    .multilineTextAlignment(.center)

                HStack (spacing: 4) {
                    VStack (alignment: .leading, spacing: 8) {
                        Group {
                            Text("Standard State")
                            Text("Atomic Mass")
                            Text("Group Block")
                            Text("Electron Configuration")
                            Text("Oxidation States")
                            Text("Electronegativity (Pauling Scale)")

                        }
                        Group {
                            Text("Atomic Radius (van der Waals)")
                            Text("Ionization Energy")
                            Text("Melting Point")
                            Text("Boiling Point")
                            Text("Density")
                            Text("CPK Colour")
                            Text("Year Discovered")
                        }
                    }
                    VStack (alignment: .leading, spacing: 8) {
                        Group {
                            Text("\(element.StandardState)")
                            Text("\(element.AtomicMass)")
                            Text("\(element.GroupBlock)")
                            Text("\(element.ElectronConfiguration)")
                            Text("\(element.OxidationStates)")
                            Text("\(element.Electronegativity)")

                        }
                        Group {
                            Text("\(element.AtomicRadius) pm")
                            Text("\(element.IonizationEnergy) eV")
                            Text("\(element.MeltingPoint) K")
                            Text("\(element.BoilingPoint) K")
                            Text("\(element.Density) g/cm3")
                            Text("    ").background(Color(hex: element.CPKHexColor))
                                .overlay(Rectangle().stroke(Color.primary, lineWidth: 1))
                            Text("\(element.YearDiscovered)")
                        }
                    }
                    .font(.body.bold())


                }
                .fixedSize(horizontal: true, vertical: true)
            }
            .scaledToFit()

        }
        .frame(width: 600, height: 500, alignment: .center)


    }

}

