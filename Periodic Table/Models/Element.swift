//
//  File.swift
//  Periodic Table
//
//  Created by Kartik Narayanan on 23/04/22.
//

import Foundation

struct Element: Identifiable {
    var id = UUID()
    var AtomicNumber = ""
    var Symbol = ""
    var AtomicName = ""
    var AtomicMass = ""
    var CPKHexColor = ""
    var ElectronConfiguration = ""
    var Electronegativity = ""
    var AtomicRadius = ""
    var IonizationEnergy = ""
    var ElectronAffinity = ""
    var OxidationStates = ""
    var StandardState = ""
    var MeltingPoint = ""
    var BoilingPoint = ""
    var Density = ""
    var GroupBlock = ""
    var YearDiscovered = ""

    init(_ AtomicNumber: String, _ Symbol: String, _ AtomicName: String, _ AtomicMass: String, _ CPKHexColor: String, _ ElectronConfiguration: String, _ Electronegativity: String, _ AtomicRadius: String, _ IonizationEnergy: String, _ ElectronAffinity: String, _ OxidationStates: String, _ StandardState: String, _ MeltingPoint: String, _ BoilingPoint: String, _ Density: String, _ GroupBlock: String, _ YearDiscovered: String ) {

        self.AtomicNumber = AtomicNumber
        self.Symbol = Symbol
        self.AtomicName = AtomicName
        self.AtomicMass = AtomicMass
        self.CPKHexColor = CPKHexColor
        self.ElectronConfiguration = ElectronConfiguration
        self.Electronegativity = Electronegativity
        self.AtomicRadius = AtomicRadius
        self.IonizationEnergy = IonizationEnergy
        self.ElectronAffinity = ElectronAffinity
        self.OxidationStates = OxidationStates
        self.StandardState = StandardState
        self.MeltingPoint = MeltingPoint
        self.BoilingPoint = BoilingPoint
        self.Density = Density
        self.GroupBlock = GroupBlock
        self.YearDiscovered = YearDiscovered
    }

    init() {

        self.AtomicNumber = ""
        self.Symbol = ""
        self.AtomicName = ""
        self.AtomicMass = ""
        self.CPKHexColor = ""
        self.ElectronConfiguration = ""
        self.Electronegativity = ""
        self.AtomicRadius = ""
        self.IonizationEnergy = ""
        self.ElectronAffinity = ""
        self.OxidationStates = ""
        self.StandardState = ""
        self.MeltingPoint = ""
        self.BoilingPoint = ""
        self.Density = ""
        self.GroupBlock = ""
        self.YearDiscovered = ""
    }

    init(atomicNumber: String, atomicName: String, Symbol: String) {
        self.AtomicName = atomicName
        self.AtomicNumber = atomicNumber
        self.Symbol = Symbol
    }

}
