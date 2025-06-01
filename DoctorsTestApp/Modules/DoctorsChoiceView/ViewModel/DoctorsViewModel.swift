//
//  DoctorsViewModel.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import SwiftUI
import SDWebImage



@Observable
class DoctorsViewModel{
    var isActiveHeart: Bool = false
    var isActiveQueue: Bool = false
    var doctors: [DoctorItem] = []
    private let networkLayer = NetworkLayer()
        
        func loadDoctors() {
            networkLayer.loadUsersFromJson { [weak self] response in
                guard let self = self else { return }
                self.doctors = response.data.users
            }
        }
    }
