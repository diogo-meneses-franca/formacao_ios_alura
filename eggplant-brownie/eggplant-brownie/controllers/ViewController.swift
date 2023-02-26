//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Diogo Meneses de França on 13/02/23.
//

import UIKit

protocol AdicionaRefeicaoDelegate{
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    
    var itens: [ItemRefeicao] = [ItemRefeicao(nome: "Molho de tomate", calorias: 40),
                                 ItemRefeicao(nome: "muçarela", calorias: 100),
                                 ItemRefeicao(nome: "Oregano", calorias: 10),
                                 ItemRefeicao(nome: "Manjericão", calorias: 10)]
    var itensSlecionados: [ItemRefeicao] = []
    
    //MARK: - IBOutlets

    @IBOutlet var nomeDaRefeicaoTextField: UITextField?
    @IBOutlet var nome: UITextField!
    @IBOutlet var felicidadeTextField: UITextField?
    
    //MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ingredientes = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let linha = indexPath.row
        let item = itens[linha]
        ingredientes.textLabel?.text = item.nome
        return ingredientes
        
    }
    
    //MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let celula = tableView.cellForRow(at: indexPath) else { return}
        if celula.accessoryType == .none{
            celula.accessoryType = .checkmark
            let linhaDaTabela = indexPath.row
            itensSlecionados.append(itens[linhaDaTabela])
        }else{
            celula.accessoryType = .none
            var item = itensSlecionados[indexPath.row]
            guard let index = itensSlecionados.firstIndex(of: item) else{return}
            itensSlecionados.remove(at: index)
            
        }
        
    }
    
    
    
    //MARK: - IBActions
    
    @IBAction func mostraAlimentos() {
        guard let nomeDaRefeicao = nomeDaRefeicaoTextField?.text else{
            return
        }
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
                
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade, items: itensSlecionados)
        print("A refeicao escolhida foi \(refeicao.nome) e a felicidade foi: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        
        navigationController?.popViewController(animated: true)
           

    }


}

