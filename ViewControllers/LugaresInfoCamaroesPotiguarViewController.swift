//
//  LugaresInfoCamaroesPotiguarViewController.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 22/09/22.
//

import UIKit

class LugaresInfoCamaroesPotiguarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let lugaresInfoCamaroesView = LugaresInfoCamaroesPotiguarView()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = lugaresInfoCamaroesView.fotosCollectionView.dequeueReusableCell(withReuseIdentifier: "camaroesCell", for: indexPath) as? CamaroesPotiguarCollectionViewCell
        cell?.setup1(with: fotosCamaroes[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    

    
    weak var delegate: HomeViewDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view = lugaresInfoCamaroesView
        
        lugaresInfoCamaroesView.fotosCollectionView.delegate = self
        lugaresInfoCamaroesView.fotosCollectionView.dataSource = self
    }
    
    
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        lugaresInfoCamaroesView.adicionarAoRoteiroButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton){
        delegate?.criarRoteiro()
        
//        let construcaoDoRoteiro = ConstrucaoDoRoteiroViewController()
//        navigationController?.pushViewController(construcaoDoRoteiro, animated: true)
    }
    


}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct LugaresInfoCamaroesPotiguarViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            LugaresInfoCamaroesPotiguarViewController().showPreview().previewDevice("iPhone 11").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
