//
//  PessoasCollectionView.swift
//  Carapaca App rascunho
//
//  Created by mcor on 16/09/22.
//

import UIKit

extension ExplorarViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.pessoasCollectionView {
            return makePessoasCell(indexPath)
            
        } else if  collectionView == self.rendaCollectionView {
            return makeRendaCell(indexPath)
            
        } else if collectionView == self.descansarCollectionView {
            return makeDescansarCell(indexPath)
            
            
        } else{
            return UICollectionViewCell()
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Clicou em uma cell")
    }
    
    fileprivate func makePessoasCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = pessoasCollectionView.dequeueReusableCell(withReuseIdentifier: "pessoasCell", for: indexPath) as? PessoasCollectionViewCell
        cell?.configure(imagem: UIImage(named: "Rectangle 361") ?? UIImage(), lugar: "Lugar")
        return cell ?? UICollectionViewCell()
        
    }
    
    fileprivate func makeRendaCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = rendaCollectionView.dequeueReusableCell(withReuseIdentifier: "rendaCell", for: indexPath) as? RendaCollectionViewCell
        cell?.configure(imagem: UIImage(named: "Rectangle 361") ?? UIImage(), lugar: "Renda")
        return cell ?? UICollectionViewCell()
        
    }

    fileprivate func makeDescansarCell(_ indexPath: IndexPath) -> UICollectionViewCell {

        let cell = descansarCollectionView.dequeueReusableCell(withReuseIdentifier: "descansarCell", for: indexPath) as? DescansarCollectionViewCell
        cell?.configure(imagem: UIImage(named: "Rectangle 361") ?? UIImage(), lugar: "Descansar")
        return cell ?? UICollectionViewCell()

    }
}



