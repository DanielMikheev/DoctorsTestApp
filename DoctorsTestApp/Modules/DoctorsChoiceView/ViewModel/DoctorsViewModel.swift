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
    private let network = NetworkLayer()
    var doctors: [DoctorItem] = []
    var isActiveHeart: Bool = false
    var isActiveQueue: Bool = false
    var lastNames: [String] = []
    var isPressed: Bool = false
    var selectedButton: SortedOption = .price
    var searchableText: String = ""
    
    func getDoctors() -> [DoctorItem] {
        return network.loadUsersFromJson()
    }
}
