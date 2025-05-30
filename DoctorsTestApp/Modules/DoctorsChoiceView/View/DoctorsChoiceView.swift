//
//  ContentView.swift
//  DoctorsTestApp
//
//  Created by Dany on 27.05.2025.
//

import SwiftUI

enum SortedOption: String, CaseIterable, Hashable{
    case price = "По цене"
    case expierence = "По стажу"
    case rate = "По рейтингу"
}

struct DoctorsChoiceView: View {

    var body: some View {
        ZStack{
            VStack{
                HeadView()
                SearchView()
                FilterView()
                CardsView()
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: Alignment(horizontal: .center, vertical: .top))
        .background(.back)
    }
}
