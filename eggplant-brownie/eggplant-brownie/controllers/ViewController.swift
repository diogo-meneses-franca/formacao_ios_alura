//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Diogo Meneses de França on 13/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var refeicaoTextField: UITextField?
    @IBOutlet var sentimentoTextField: UITextField?
    
    @IBAction func mostraAlimentos() {
        if let nomeDaRefeicao = refeicaoTextField?.text, let felicidadeDaRefeicao = sentimentoTextField?.text{
            let nome = nomeDaRefeicao
            if let felicidade = Int(felicidadeDaRefeicao){
                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
                print("A refeicao escolhida foi \(refeicao.nome) e a felicidade foi: \(refeicao.felicidade)")
            }else{
                print("Felicidade inválida.")
            }
            
        }else{
            print("refeição inválida.")
        }

    }


}

