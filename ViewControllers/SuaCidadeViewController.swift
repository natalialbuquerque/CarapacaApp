//
//  SuaCidadeViewController.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 16/09/22.
//

import UIKit

class SuaCidadeViewController: UIViewController {
    let suaCidade = SuaCidadeView()
    weak var delegate: HomeViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = suaCidade
        setupAdditionalConfiguration()
        
    }
    
    func leituraSuaCidadeTextField() -> String{
        let suaCidadeTextField: String = suaCidade.roteiroTextField.text ?? ""
        return suaCidadeTextField
    }
    
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        suaCidade.proximoButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton){
        delegate?.criarRoteiro()
        
        let colocarDestinos = ColocarDestinosViewController()
        navigationController?.pushViewController(colocarDestinos, animated: true)
//        let suaCidade = leituraSuaCidadeTextField()
    }
}
