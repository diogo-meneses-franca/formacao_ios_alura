//
//  ItemRefeicao.swift
//  eggplant-brownie
//
//  Created by Diogo Meneses de França on 13/02/23.
//

import UIKit

class ItemRefeicao: NSObject {
    let nome: String
    let calorias: Double
        
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
        }

}
