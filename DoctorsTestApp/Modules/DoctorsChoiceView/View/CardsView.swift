//
//  CardsView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI



struct CardsView: View {
    @State var doctorViewModel = DoctorsViewModel()
    @Binding var path: NavigationPath
    var body: some View {
        ZStack{
            ScrollView(.vertical, showsIndicators: false) {
                if doctorViewModel.doctors.isEmpty {
                    ProgressView()
                } else {
                    ForEach(doctorViewModel.doctors.indices, id: \.self) { index in
                        let doctor = doctorViewModel.doctors[index]
                        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)){
                            OneDoctorCardView(
                            lastName: doctor.lastName,
                            firstName: doctor.firstName,
                            patronymic: doctor.patronymic ?? "",
                            avatar: doctor.avatar ?? ""
                        )
                            
                            Button {
                                path.append(Pages.card(doctor.lastName, doctor.firstName, doctor.patronymic ?? "", doctor.avatar ?? ""))
                            } label: {
                                Rectangle()
                                    .foregroundStyle(.clear)
                            }
                            .frame(width: 300, height: 150)
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: Alignment(horizontal: .center, vertical: .top))
        .scrollTargetBehavior(.viewAligned)
        .background(.back)
        .onAppear{
            doctorViewModel.loadDoctors()
        }
    }
}
