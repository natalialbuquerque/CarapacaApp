//
//  LugaresInfoDragaoViewController.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 22/09/22.
//

import UIKit

class LugaresInfoDragaoViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let lugaresInfoDragaoView = LugaresInfoDragaoView()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = lugaresInfoDragaoView.fotosCollectionView.dequeueReusableCell(withReuseIdentifier: "dragaoCell", for: indexPath) as? DragaoCollectionViewCell
        cell?.setup2(with: fotosDragao[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    

    
    weak var delegate: HomeViewDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view = lugaresInfoDragaoView
        
        lugaresInfoDragaoView.fotosCollectionView.delegate = self
        lugaresInfoDragaoView.fotosCollectionView.dataSource = self
        
        setupAdditionalConfiguration()
    }
    
    
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        lugaresInfoDragaoView.adicionarAoRoteiroButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        
    }

    @objc func tappedButton(sender: UIButton){
        delegate?.criarRoteiro()
        
        let adicionarAoRoteiro = ExplorarFortalezaViewController()
        navigationController?.pushViewController(adicionarAoRoteiro, animated: true)
    }
    


}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct LugaresInfoDragaoViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            LugaresInfoDragaoViewController().showPreview().previewDevice("iPhone 11").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
