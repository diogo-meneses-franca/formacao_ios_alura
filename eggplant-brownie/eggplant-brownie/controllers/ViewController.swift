//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Diogo Meneses de França on 13/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var alimentoTextField: UITextField!
    @IBOutlet var sentimentoTextField: UITextField!
    
    @IBAction func mostraAlimentos(){
        let alimento = alimentoTextField.text
        let sentimento = sentimentoTextField.text
        print("O alimento escolhido foi: \(alimento), e o sentimento foi: \(sentimento)")
        
        
    }


}

