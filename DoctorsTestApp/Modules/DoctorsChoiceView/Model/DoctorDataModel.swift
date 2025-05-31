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
    var firstName: String
    var patronymic: String?
    var lastName: String
    var avatar: String?
}
