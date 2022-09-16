//
//  SuaCidadeViewController.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 16/09/22.
//

import UIKit

class SuaCidadeViewController: UIViewController {
    let suaCidade = SuaCidadeView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = suaCidade
    }
}
