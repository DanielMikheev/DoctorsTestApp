//
//  SearchView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI

struct SearchView: View {
    @State private var text: String = ""
    @State private var searchImage: String = "magnifyingglass"
    
    var body: some View {
        HStack{
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                TextField("", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                
                HStack{
                    Image(systemName: searchImage)
                        .foregroundStyle(.placeholder)
                    Text("Поиск")
                        .foregroundStyle(.placeholder)
                }
                .padding(.leading, 20)
            }
            
        }
    }
}
