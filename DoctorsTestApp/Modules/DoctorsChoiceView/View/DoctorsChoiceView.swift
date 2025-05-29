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

struct HeadView: View {
    var body: some View {
        HStack{
            HStack(spacing: 115){
                Button {
                    //
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.gray)
                        .font(Font.system(.title, weight: .bold))
                }
                .frame(width: 12, height: 21)
                
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

struct SearchView: View {
    @State private var text: String = ""
    @State private var searchImage: String = "magnifyingglass"
    
    var body: some View {
        HStack{
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                TextField("", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .padding(.leading, 16)
                    .padding(.trailing, 16)
                
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

struct FilterView: View {
    @State var selectedOption: SortedOption = .price
    
    var body: some View {
        Picker("Sorted", selection: $selectedOption) {
            ForEach(SortedOption.allCases, id: \.self) { option in
                Text(option.rawValue).tag(option)
            }
        }
        .pickerStyle(.segmented)
        .colorMultiply(.pink)
        .background(.back)
        .padding()
    }
}

struct CardsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            OneDoctorCardView()
            
            ZStack{
                VStack(spacing: 15){
                    HStack{
                        HStack(alignment: .top){
                            Image(.img2)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .clipShape(.circle)
                            
                            VStack(alignment: .leading, spacing: 10){
                                VStack(alignment: .leading){
                                    Text("Бардо")
                                        .fontWeight(.semibold)
                                    Text("Кристина Алексеевна")
                                        .fontWeight(.semibold)
                                }
                                
                                HStack(spacing: 2){
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.pink)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.pink)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.pink)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.pink)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.gray)
                                }
                                .frame(width: 70, height: 12)
                                HStack(spacing: 5){
                                    Text("Педиатр")
                                        .foregroundStyle(.gray)
                                        .font(Font.system(size: 14, weight: .light))
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width: 3, height: 3, alignment: .center)
                                        .foregroundStyle(.gray)
                                    Text("Стаж 10 лет")
                                        .foregroundStyle(.gray)
                                        .font(Font.system(size: 14, weight: .light))
                                    
                                }
                                
                                Text("от 600 ₽")
                                    .fontWeight(.semibold)
                                
                                
                            }
                            Spacer()
                            Button {
                                //
                            } label: {
                                Image(systemName: "heart")
                            }
                            .foregroundStyle(.placeholder)
                        }
                    }
                    .frame(width: 311, height: 126)
                    
                    Button {
                        //
                    } label: {
                        Text("Нет свободного расписания")
                            .foregroundStyle(.black)
                    }
                    .frame(width: 311, height: 47)
                    .background(.back)
                    .clipShape(.rect(cornerRadius: 8))
                }
                .frame(width: 311, height: 188)

            }
            .frame(width: 343, height: 224)
            .background(.white)
            .clipShape(.rect(cornerRadius: 10))
            .padding(.bottom, 15)
            
            OneDoctorCardView()
            
            ZStack{
                VStack(spacing: 15){
                    HStack{
                        HStack(alignment: .top){
                            Image(.img2)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50)
                                .clipShape(.circle)
                            
                            VStack(alignment: .leading, spacing: 10){
                                VStack(alignment: .leading){
                                    Text("Бардо")
                                        .fontWeight(.semibold)
                                    Text("Кристина Алексеевна")
                                        .fontWeight(.semibold)
                                }
                                
                                HStack(spacing: 2){
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.pink)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.pink)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.pink)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.pink)
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 12, height: 12)
                                        .foregroundStyle(.gray)
                                }
                                .frame(width: 70, height: 12)
                                HStack(spacing: 5){
                                    Text("Педиатр")
                                        .foregroundStyle(.gray)
                                        .font(Font.system(size: 14, weight: .light))
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width: 3, height: 3, alignment: .center)
                                        .foregroundStyle(.gray)
                                    Text("Стаж 10 лет")
                                        .foregroundStyle(.gray)
                                        .font(Font.system(size: 14, weight: .light))
                                    
                                }
                                
                                Text("от 600 ₽")
                                    .fontWeight(.semibold)
                                
                                
                            }
                            Spacer()
                            Button {
                                //
                            } label: {
                                Image(systemName: "heart")
                            }
                            .foregroundStyle(.placeholder)
                        }
                    }
                    .frame(width: 311, height: 126)
                    
                    Button {
                        //
                    } label: {
                        Text("Нет свободного расписания")
                            .foregroundStyle(.black)
                    }
                    .frame(width: 311, height: 47)
                    .background(.back)
                    .clipShape(.rect(cornerRadius: 8))
                }
                .frame(width: 311, height: 188)

            }
            .frame(width: 343, height: 224)
            .background(.white)
            .clipShape(.rect(cornerRadius: 10))
            .padding(.bottom, 15)
            
            
            
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

struct OneDoctorCardView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 15){
                HStack{
                    HStack(alignment: .top){
                        Image(.img)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(.circle)
                        
                        VStack(alignment: .leading, spacing: 10){
                            VStack(alignment: .leading){
                                Text("Семенова")
                                    .fontWeight(.semibold)
                                Text("Дарья Сергеевна")
                                    .fontWeight(.semibold)
                            }
                            
                            HStack(spacing: 2){
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundStyle(.pink)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundStyle(.pink)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundStyle(.pink)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundStyle(.pink)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundStyle(.pink)
                            }
                            .frame(width: 70, height: 12)
                            HStack(spacing: 5){
                                Text("Педиатр")
                                    .foregroundStyle(.gray)
                                    .font(Font.system(size: 14, weight: .light))
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .frame(width: 3, height: 3, alignment: .center)
                                    .foregroundStyle(.gray)
                                Text("Стаж 27 лет")
                                    .foregroundStyle(.gray)
                                    .font(Font.system(size: 14, weight: .light))
                                
                            }
                            
                            Text("от 600 ₽")
                                .fontWeight(.semibold)
                            
                            
                        }
                        Spacer()
                        Button {
                            //
                        } label: {
                            Image(systemName: "heart")
                        }
                        .foregroundStyle(.placeholder)
                    }
                }
                .frame(width: 311, height: 126)
                
                Button {
                    //
                } label: {
                    Text("Записаться")
                        .foregroundStyle(.white)
                }
                .frame(width: 311, height: 47)
                .background(.pink)
                .clipShape(.rect(cornerRadius: 8))
            }
            .frame(width: 311, height: 188)

        }
        .frame(width: 343, height: 224)
        .background(.white)
        .clipShape(.rect(cornerRadius: 10))
        .padding(.bottom, 15)
    }
}

struct MainTabView: View {
    var body: some View {
        TabView{
            DoctorsChoiceView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Главная")
                }

            Text("Приемы")
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
