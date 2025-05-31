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
                DispatchQueue.main.async {
                    self?.doctors = response.data.users
                    
                }
            }
        }
    }
