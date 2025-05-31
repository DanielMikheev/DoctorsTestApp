//
//  FilterView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI

struct FilterView: View {
    @State var selectedOption: SortedOption = .price
    
    var body: some View {
        Picker("", selection: $selectedOption) {
            ForEach(SortedOption.allCases, id: \.self) { option in
                Text(option.rawValue).tag(option)
            }
        }
        .pickerStyle(.segmented)
        .colorMultiply(.pink)
        .padding()
    }
}
