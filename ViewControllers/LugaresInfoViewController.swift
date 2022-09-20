//
//  LugaresInfoViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 13/09/22.
//

import UIKit

class LugaresInfoViewController: UIViewController {

    let lugaresInfoView = LugaresInfoView()
    weak var delegate: HomeViewDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view = lugaresInfoView
    }
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        lugaresInfoView.adicionarAoRoteiroButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton){
        delegate?.criarRoteiro()
        
        let construcaoDoRoteiro = ConstrucaoDoRoteiroViewController()
        navigationController?.pushViewController(construcaoDoRoteiro, animated: true)
    }
    


}
