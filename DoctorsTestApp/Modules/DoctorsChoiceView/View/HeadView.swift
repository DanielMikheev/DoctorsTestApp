//
//  HeadView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI

struct HeadView: View {
    var body: some View {
        HStack{
            HStack(spacing: 115){
                Spacer()
                
                Text("Педиатры")
                    .font(Font.system(.title2, weight: .medium))
                    .frame(width: 110, height: 24)
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, alignment: Alignment(horizontal: .leading, vertical: .center))
        .padding()
    }
}

