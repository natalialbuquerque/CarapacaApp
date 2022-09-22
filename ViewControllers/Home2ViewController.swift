//
//  Home2ViewController.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 22/09/22.
//

import UIKit

class Home2ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    let home2View = Home2View()
    weak var delegate: HomeViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.tabBarController?.tabBar.isHidden = false
        
        self.view = home2View
        home2View.delegate = self
        
        home2View.meusRoteiros2CollectionView.dataSource = self
        home2View.meusRoteiros2CollectionView.delegate = self
        
        setupAdditionalConfiguration()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = home2View.meusRoteiros2CollectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as? CustomCollectionViewCell
        cell?.setup(with: home2Roteiros[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    
    
    
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        home2View.criarRoteiroButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }
    

    @objc func tappedButton(sender: UIButton){
        print("Apertou o botao")
        delegate?.criarRoteiro()
        
        let novaViagem = NovaViagemViewController()
        navigationController?.pushViewController(novaViagem, animated: true)
    }
    
    
    
}

extension Home2ViewController: HomeViewDelegate{
    func criarRoteiro() {
        print("Deve aparecer a próxima página")
        
    }
}
//MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct Home2ViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            Home2ViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.portrait)
            //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

