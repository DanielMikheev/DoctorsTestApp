//
//  OneDoctorCardView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI

struct OneDoctorCardView: View {
    @State var doctorsViewModel = DoctorsViewModel()
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack{
            VStack(spacing: 15){
                HStack{
                    Button {
                       
                    } label: {
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
                                        .foregroundStyle(.black)
                                    Text("Дарья Сергеевна")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.black)
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
                                    .foregroundStyle(.black)
                                
                                
                            }
                            Spacer()
                            Button {
                                isActive.toggle()
                            } label: {
                                Image(systemName: "heart.fill")
                            }
                            .foregroundStyle(isActive ? .pink : .gray)
                            .clipped()
                        }
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
