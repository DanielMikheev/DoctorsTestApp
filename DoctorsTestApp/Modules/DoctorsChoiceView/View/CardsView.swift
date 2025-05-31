//
//  CardsView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI

struct CardsView: View {
    @State var doctorViewModel = DoctorsViewModel()
    @State var path = NavigationPath()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            if doctorViewModel.doctors.isEmpty {
                ProgressView()
            } else {
                ForEach(doctorViewModel.doctors.indices, id: \.self) { index in
                    let doctor = doctorViewModel.doctors[index]
                    OneDoctorCardView(
                        lastName: doctor.lastName,
                        firstName: doctor.firstName,
                        patronymic: doctor.patronymic ?? "",
                        avatar: doctor.avatar ?? ""
                    )
                }
            }
        }
            .scrollTargetBehavior(.viewAligned)
            .onAppear{
                doctorViewModel.loadDoctors()
            }
        }
    }
