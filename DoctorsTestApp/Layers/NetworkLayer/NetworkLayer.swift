//
//  NetworkLayer.swift
//  DoctorsTestApp
//
//  Created by Dany on 30.05.2025.
//

import Foundation

class NetworkLayer{
    
    func loadUsersFromJson(completion: @escaping (DoctorsDataModel) -> Void){
        guard let url = Bundle.main.url(forResource: "test", withExtension: "json") else {
            print("Файл формата JSON в проекте не найден!")
            return
        }
        
        do{
            let data =  try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let users = try decoder.decode(DoctorsDataModel.self, from: data)
            completion(users)
            
        }catch{
            print("Ошибка при декодировании JSON: \(error.localizedDescription)")
        }
        
    }
    
}

