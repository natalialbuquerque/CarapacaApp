//
//  ColocarDestinosViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class ColocarDestinosViewController: UIViewController {
    
    let colocarDestinosView = ColocarDestinosView()
    let suaCidadeVieController = SuaCidadeViewController()
    
    weak var delegate: HomeViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = colocarDestinosView
        setupAdditionalConfiguration()
        setupAdicionar1()
        setupAdicionar2()
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func setupAdicionar2(){
         // MARK: - Outras configurações
        colocarDestinosView.adicionarButton2.addTarget(self, action: #selector(tappedButtonAdicionar2), for: .touchUpInside)
    }
    
    @objc func tappedButtonAdicionar2(sender: UIButton){
        colocarDestinosView.adicionarButton2.isHidden = true
    }
    
    func setupAdicionar1(){
         // MARK: - Outras configurações
        colocarDestinosView.adicionarButton1.addTarget(self, action: #selector(tappedButtonAdicionar), for: .touchUpInside)
    }
    
    @objc func tappedButtonAdicionar(sender: UIButton){
        colocarDestinosView.adicionarButton1.isHidden = true
        colocarDestinosView.title4Label.isHidden = false
        colocarDestinosView.adicionarButton2.isHidden = false
        colocarDestinosView.roteiroTextField3.isHidden = false
    }
    
    
    
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        colocarDestinosView.proximoButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton){
        delegate?.criarRoteiro()
        
        let primeiroRoteiro = PrimeiroRoteiroViewController()
        navigationController?.pushViewController(primeiroRoteiro, animated: true)
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
