//
//  NovaViagemViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class NovaViagemViewController: UIViewController {
    static let identifier = "NovaViagemIdentifier"
    
    let novaViagemView = NovaViagemView()
    weak var delegate: HomeViewDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupAdditionalConfiguration()
        self.view = novaViagemView
//        novaViagemView.delegate = self
    }
    
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        novaViagemView.proximoButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton){
        delegate?.criarRoteiro()
        
        let suaCidade = SuaCidadeViewController()
        navigationController?.pushViewController(suaCidade, animated: true)
    }

    
}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct NovaViagemViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            NovaViagemViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
