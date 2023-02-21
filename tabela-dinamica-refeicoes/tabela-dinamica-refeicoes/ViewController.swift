//
//  ViewController.swift
//  tabela-dinamica-refeicoes
//
//  Created by Diogo Meneses de França on 15/02/23.
//

import UIKit

class ViewController: UITableViewController {
    
    let refeicoes = ["churros", "macarrão", "arroz", "feijão"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("foi carregado!")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao
        return celula
    }


}

