//
//  Cidade.swift
//  Minhas Viagens
//
//  Created by IFPB on 12/12/2019.
//  Copyright © 2019 IFPB. All rights reserved.
//

import Foundation

class Cidade : NSObject {
    var nome : String
    var latitude : Double
    var longitude : Double
    
    override var description: String {
        return "\(nome) - \(latitude) : \(longitude)"
    }
    
    init(nome: String, latitude: Double, longitude: Double) {
        self.nome = nome
        self.latitude = latitude
        self.longitude = longitude
    }
}
