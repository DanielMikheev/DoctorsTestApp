//
//  MainTabView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            DoctorsChoiceView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Главная")
                }

            DoctorCardView()
                .tabItem {
                    Image(systemName: "list.clipboard.fill")
                    Text("Приемы")
                }
            
            Text("Чат")
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Чат")
                }
                .badgeProminence(.standard)
                .badge(1)
                
            Text("Профиль")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        
        }
        .tint(.pink)
    }
}


#Preview {
    MainTabView()
}
