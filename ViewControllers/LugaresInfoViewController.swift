//
//  LugaresInfoViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 13/09/22.
//

import UIKit

class LugaresInfoViewController: UIViewController {

    let lugaresInfoView = LugaresInfoView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view = lugaresInfoView
    }
    


}
