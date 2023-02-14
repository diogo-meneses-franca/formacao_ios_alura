//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Diogo Meneses de França on 13/02/23.
//

import UIKit

class Refeicao: NSObject {
        let nome: String
        let felicidade: Int
        var items: Array<ItemRefeicao> = []
        
        // Mark: Construtor
        
        init(nome: String, felicidade: Int) {
            self.nome = nome
            self.felicidade = felicidade
        }
        
        // Mark: Funções
        
        func addItem(item: ItemRefeicao){
            self.items.append(item)
        }
        func totalDeCalorias() -> Double{
            var total = 0.0
            for itens in self.items{
                total += itens.calorias
            }
            return total
        }

}
