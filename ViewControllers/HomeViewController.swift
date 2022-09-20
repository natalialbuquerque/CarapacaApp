//
//  ViewController.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 10/09/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    let homeView = HomeView()
    weak var delegate: HomeViewDelegate?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view = homeView
        homeView.delegate = self
        
        homeView.meusRoteirosCollectionView.dataSource = self
        homeView.meusRoteirosCollectionView.delegate = self
        
        setupAdditionalConfiguration()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier , for: indexPath) as! CustomCollectionViewCell
        cell.configure(label: "Custom \(indexPath.row)")
        
        return cell
    }
    
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        homeView.criarRoteiroButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }
    

    @objc func tappedButton(sender: UIButton){
        print("Apertou o botao")
        delegate?.criarRoteiro()
        
        let novaViagem = NovaViagemViewController()
        navigationController?.pushViewController(novaViagem, animated: true)
    }
    
    
}

extension HomeViewController: HomeViewDelegate{
    func criarRoteiro() {
        print("Deve aparecer a próxima página")
        
    }
}
//MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct HomeViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            HomeViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.portrait)
            //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

