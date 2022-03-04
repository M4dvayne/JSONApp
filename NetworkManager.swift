//
//  NetworkManager.swift
//  JSONApp
//
//  Created by Вячеслав Кремнев on 03.03.2022.
//

import Foundation

struct NetworkManager { 
    
    func fetchInfo() {
        
        guard let url = URL(string: Link.json.rawValue) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            do {
                let zip = try JSONDecoder().decode(ZipCode.self, from: data)
                //               DispatchQueue.main.async {
                //                   
                //               }
                print(zip)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
