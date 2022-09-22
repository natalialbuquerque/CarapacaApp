//
//  LugaresInfoViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 13/09/22.
//

import UIKit

class LugaresInfoPraianaBarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = lugaresInfoView.fotosCollectionView.dequeueReusableCell(withReuseIdentifier: "praianoBarCell", for: indexPath) as? PraianoBarCollectionViewCell
        cell?.setup(with: fotosPraiano[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    

    let lugaresInfoView = LugaresInfoPraianaBarView()
    weak var delegate: HomeViewDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view = lugaresInfoView
        
        lugaresInfoView.fotosCollectionView.delegate = self
        lugaresInfoView.fotosCollectionView.dataSource = self
        
        setupAdditionalConfiguration()
    }
    
    
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        lugaresInfoView.adicionarAoRoteiroButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        
    }

    @objc func tappedButton(sender: UIButton){
        delegate?.criarRoteiro()
        
        let adicionarAoRoteiro = ExplorarJPViewController()
        navigationController?.pushViewController(adicionarAoRoteiro, animated: true)
    }
    


}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct LugaresInfoPraianaBarViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            LugaresInfoPraianaBarViewController().showPreview().previewDevice("iPhone 11").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
