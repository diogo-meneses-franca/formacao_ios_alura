//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Diogo Meneses de França on 13/02/23.
//

import UIKit

protocol ViewControllerDelegate{
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController {
    
    var delegate: ViewControllerDelegate?

    @IBOutlet var nomeDaRefeicaoTextField: UITextField?
    @IBOutlet var nome: UITextField!
    @IBOutlet var felicidadeTextField: UITextField?
    
    @IBAction func mostraAlimentos() {
        guard let nomeDaRefeicao = nomeDaRefeicaoTextField?.text else{
            return
        }
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
                
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("A refeicao escolhida foi \(refeicao.nome) e a felicidade foi: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        
        navigationController?.popViewController(animated: true)
           

    }


}

