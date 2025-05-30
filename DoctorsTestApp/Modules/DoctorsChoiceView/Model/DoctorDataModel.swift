//
//  DoctorDataModel.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import Foundation


struct DoctorsDataModel: Codable{
    var data: DoctorModel
}

struct DoctorModel: Codable {
    var users: [DoctorItem]
}

struct DoctorItem: Codable{
    var avatar: String?
    var lastName: String?
    var firstName: String?
    var patronymic: String?
    var ratings: [DoctorRating]
}

struct DoctorRating: Codable{
    var value: Int?
}
