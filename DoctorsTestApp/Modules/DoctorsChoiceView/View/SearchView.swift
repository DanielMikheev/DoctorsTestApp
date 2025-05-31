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
    @State private var screenWidth: CGFloat = UIScreen.main.bounds.width
    var body: some View {
        HStack{
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                Rectangle()
                    .frame(width: screenWidth - 40, height: 36)
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadius: 8))
                    .shadow(radius: 3, x: 1, y: 1)
                TextField("Поиск", text: $text)
                    .padding(30)
                    .frame(width: screenWidth - 100, height: 24)
                    .background()
                Image(systemName: searchImage)
                    .foregroundStyle(.placeholder)
                    .padding(5)
                    .frame(width: 24, height: 24, alignment: Alignment(horizontal: .leading, vertical: .center))
            }
            
        }
    }
}
