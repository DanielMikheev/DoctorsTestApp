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
enum Pages: Hashable{
    case card(String, String, String, String)
}

struct DoctorsChoiceView: View {
    @State var path  = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path){
            ZStack{
                VStack{
                    HeadView()
                    VStack(spacing: 30){
                        VStack(spacing: 20){
                            SearchView()
                            FilterView()
                        }
                        CardsView(path: $path)
                    }
                }
            }
            .navigationDestination(for: Pages.self){ item in
                switch item{
                case .card(let lastname, let firstName, let patronymic, let avatar):
                    DoctorCardView(path: $path, lastName: lastname, firstName: firstName, patronymic: patronymic, avatar: avatar)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: Alignment(horizontal: .center, vertical: .top))
            .background(.back)
        }
    }
}


#Preview {
    MainTabView()
}
