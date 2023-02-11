import UIKit

let caloria1 = 10
let caloria2 = 20
let caloria3 = 78
let caloria4 = 96

let calorias = [caloria1, caloria2, caloria3, caloria4]


// Primeira forma de escrever um for

//for i in 0...3{
//    print(calorias[i])
//}

//Segunda forma de escrever um for

//for i in 0...calorias.count - 1{
//    print(calorias[i])
//}

//Terceira forma de escrever um for
//for caloria in calorias{
//    print(caloria)
//}

func totalDeCalorias(calorias: Array<Int> ) -> Int{
    var total = 0
    for caloria in calorias{
        total += caloria
    }
    return total
}

var resultado = totalDeCalorias(calorias: calorias)
print(resultado)
