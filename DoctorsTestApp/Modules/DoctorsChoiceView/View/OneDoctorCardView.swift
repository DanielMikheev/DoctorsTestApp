//
//  OneDoctorCardView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI
import SDWebImageSwiftUI

struct OneDoctorCardView: View {
    @State var doctorsViewModel = DoctorsViewModel()
    @State var lastName: String
    @State var firstName: String
    @State var patronymic: String
    @State var avatar: String
    
    var body: some View {
        ZStack{
            VStack(spacing: 15){
                HStack{
                    HStack(alignment: .top){
                        WebImage(url: URL(string: avatar))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 10){
                            VStack(alignment: .leading){
                                Text("\(lastName)")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                                Text("\(firstName) \(patronymic)")
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
                            withAnimation(.interpolatingSpring) {
                                doctorsViewModel.isActiveHeart.toggle()
                            }
                            
                        } label: {
                            Image(systemName: "heart.fill")
                        }
                        .foregroundStyle(doctorsViewModel.isActiveHeart ? .pink : .gray)
                        .clipped()
                    }
                }
                .frame(width: 311, height: 126)
                
                Button {
                    withAnimation(.linear) {
                        doctorsViewModel.isActiveQueue.toggle()
                    }
                    
                } label: {
                    Text(doctorsViewModel.isActiveQueue ? "Нет свободного расписания" : "Записаться")
                        .foregroundStyle(doctorsViewModel.isActiveQueue ? .black : .white )
                }
                .frame(width: 311, height: 47)
                .background(doctorsViewModel.isActiveQueue ? .btn : .pink)
                .clipShape(.rect(cornerRadius: 8))
            }
            .frame(width: 343, height: 224)
            .background(.white)
            .clipShape(.rect(cornerRadius: 10))
            .padding(.bottom, 15)
            
        }
    }
}
