import UIKit

let nome: String = "lasanha"
let caloria = 87.0
let felicidade = 5

//func alimentoConsumido(){
//    print("O alimento consumido foi:  \(nome).")
//}

// comentario simples
/* comentario longo
 em duas ou mais linhas*/

//alimentoConsumido()
func alimentoConsumido(_ nome: String, _ caloria: Double){
    print("O alimento consimido foi \(nome) e ele possui \(caloria) calorias.")
}

alimentoConsumido(nome, caloria)
