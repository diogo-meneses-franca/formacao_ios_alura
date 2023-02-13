import UIKit

class Refeicao{
    var nome: String
    var felicidade: String
    var items: Array<Item> = []
    
    // Mark: Construtor
    
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    // Mark: Funções
    
    func addItem(item: Item){
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
    
class Item{
    var nome: String
    var calorias: Double
        
    init(nome: String, calorias: Double){
        self.nome = nome
        self.calorias = calorias
        }
}

let refeicao = Refeicao(nome: "Almoço",felicidade: "5")

let arroz = Item(nome: "arroz", calorias: 30)
let feijao = Item(nome: "feijao", calorias: 60)
let ovo = Item(nome: "ovo", calorias: 50)

refeicao.addItem(item: arroz)
refeicao.addItem(item: feijao)
refeicao.addItem(item: ovo)

for item in refeicao.items{
    print(item.nome)
}

print(refeicao.totalDeCalorias())
