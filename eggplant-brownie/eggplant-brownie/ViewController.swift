//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Diogo Meneses de França on 09/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet var felicidadeTextField: UITextField!

    
    @IBAction func adicionar(_ sender: Any) {
        let nome = nomeTextField.text
        let felicidade = felicidadeTextField.text
        print("Comi \(nome) e fiquei com a felicidade \(felicidade)")
        
    }
    

}

