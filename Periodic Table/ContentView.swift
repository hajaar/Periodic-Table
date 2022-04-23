    //
    //  ContentView.swift
    //  Periodic Table
    //
    //  Created by Kartik Narayanan on 23/04/22.
    //

import SwiftUI



struct ContentView: View {
    @State var showDetails = false
    @State var showDetailsForIndex: Int = 0
    @State var propertySelection = 1
    var body: some View {
        ZStack {
            VStack(spacing: 2) {
                Spacer()
                HStack {
                    Spacer()

                Text("Periodic Table of Elements")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    Spacer()
                Picker(selection: $propertySelection, label: Text("Display Property")) {
                    Text("Chemical Group Block").tag(1)
                    Text("Standard State").tag(2)
                    Text("Atomic Mass").tag(3)
                    Text("Boiling Point").tag(4)
                    Text("Density").tag(5)
                }
            }
            ForEach(0..<9) {i in
                HStack(spacing: 2) {
                    ForEach(0..<18) {j in
                        let index = 18*i + j
                        CellView(index: index, propertySelection: propertySelection)
                            .onTapGesture {
                                if PeriodicTable.elements[index].shouldShow {
                                    withAnimation {
                                        showDetails = true
                                    }

                                    showDetailsForIndex = index
                                }
                            }

                    }

                }
            }
            Spacer()
        }
        .padding()
        if showDetails {
            DetailView(index: showDetailsForIndex)
                .transition(.opacity)
                .onTapGesture {
                    withAnimation {
                        showDetails = false
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
