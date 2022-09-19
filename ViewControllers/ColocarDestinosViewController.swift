//
//  ColocarDestinosViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class ColocarDestinosViewController: UIViewController {
    let colocarDestinosView = ColocarDestinosView()
    weak var delegate: HomeViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = colocarDestinosView
        setupAdditionalConfiguration()
    }
    
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        colocarDestinosView.proximoButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton){
        delegate?.criarRoteiro()
        
        let lugaresInfor = LugaresInfoViewController()
        navigationController?.pushViewController(lugaresInfor, animated: true)
    }
}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ColocarDestinosViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ColocarDestinosViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
