//
//  DoctorCardView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI

struct DoctorCardView: View {
    var body: some View {
        ZStack{
            VStack(spacing: 20){
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
                        
                        Text("Педиатр")
                            .font(Font.system(.title2, weight: .regular))
                            .frame(width: 110, height: 24)
                        
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, alignment: Alignment(horizontal: .leading, vertical: .center))
                .padding()
                
                HStack(spacing: 16){
                    Image(.img)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading){
                        Text("Семенова")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                        Text("Дарья Сергеевна")
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                    }
                }
                .frame(width: 343, height: 60, alignment: Alignment(horizontal: .leading, vertical: .center))
                
                VStack{
                    HStack{
                        Image(.clock)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.gray)
                        Text("Опыт работы: 27 лет")
                            .foregroundStyle(.gray)
                    }
                    .frame(width: 343, height: 30, alignment: Alignment(horizontal: .leading, vertical: .center))
                    HStack{
                        Image(.medicineCase)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.gray)
                        Text("Врач высшей категории")
                            .foregroundStyle(.gray)
                    }
                    .frame(width: 343, height: 30, alignment: Alignment(horizontal: .leading, vertical: .center))
                    HStack{
                        Image(.study)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.gray)
                        Text("1-й ММИ им. И.М.Сеченова")
                            .foregroundStyle(.gray)
                    }
                    .frame(width: 343, height: 30, alignment: Alignment(horizontal: .leading, vertical: .center))
                    HStack{
                        Image(.location)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.gray)
                        Text("Детская клиника \"РебёнОК\" ")
                            .foregroundStyle(.gray)
                    }
                    .frame(width: 343, height: 30, alignment: Alignment(horizontal: .leading, vertical: .center))
                }
                
                VStack(spacing: 100){
                    VStack(spacing: 24){
                        ZStack{
                            Rectangle()
                                .frame(width: 343, height: 60)
                                .foregroundStyle(.white)
                                .clipShape(.rect(cornerRadius: 8))
                            HStack{
                                Text("Стоимость услуг")
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("от 600 ₽")
                                    .fontWeight(.semibold)
                            }
                            .padding()
                            .frame(width: 343, height: 60)
                            
                        }
                        
                        HStack{
                            Text("Проводит диагностику и лечение терапевтических больных. Осуществляет расшифровку и снятие ЭКГ. Дает рекомендации по диетологии. Доктор имеет опыт работы в России и зарубежом. Проводит консультации пациентов на английском языке.")
                                .frame(width: 343)
                        }
                    }
                    
                    Button {
                        //
                    } label: {
                        Text("Записаться")
                            .foregroundStyle(.white)
                    }
                    .frame(width: 343, height: 56)
                    .background(.pink)
                    .clipShape(.rect(cornerRadius: 8))
                    
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight:  .infinity, alignment: Alignment(horizontal: .center, vertical: .top))
        .background(.back)
    }
}

