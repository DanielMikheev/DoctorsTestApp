//
//  NetworkLayer.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import Foundation

class NetworkLayer{
    
    func loadUsersFromJson() -> [DoctorItem]{
        guard let url = Bundle.main.url(forResource: "test", withExtension: "json") else {
            fatalError()
            
        }
        
        do{
            let data =  try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let users = try decoder.decode(DoctorsDataModel.self, from: data)
            return users.data.users
        }catch{
            print("Ошибка при декодировании JSON: \(error.localizedDescription)")
        }
        return []
    }
}

