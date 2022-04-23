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
    var body: some View {
            ZStack {
                VStack(spacing: 2) {
                    Spacer()
                    ForEach(0..<9) {i in
                        HStack(spacing: 2) {
                            ForEach(0..<18) {j in
                                let index = 18*i + j
                                CellView(index: index)
                                    .onTapGesture {
                                        if PeriodicTable.elements[index].shouldShow {
                                        showDetails.toggle()
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
                        .onTapGesture {
                            showDetails.toggle()
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
