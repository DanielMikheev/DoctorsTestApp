//
//  CardsView.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI

struct CardsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            OneDoctorCardView()
            OneDoctorCardView()
            OneDoctorCardView()
            OneDoctorCardView()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}
