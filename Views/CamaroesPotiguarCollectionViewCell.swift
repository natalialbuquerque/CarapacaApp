//
//  CamaroesPotiguarCollectionViewCell.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 22/09/22.
//

import UIKit

class CamaroesPotiguarCollectionViewCell:
    UICollectionViewCell {
        static let identifier = "camaroesCell"
        
        let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "Praiano Bar 2")
            imageView.contentMode = .scaleAspectFit
            imageView.clipsToBounds = true
            return imageView
        }()
        
        
       
        let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.distribution = .fillProportionally
            stackView.alignment = .leading
            stackView.spacing = 0
            return stackView
        }()
        
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupHierarchy()
            setupConstraints()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupHierarchy() {
            
            contentView.addSubview(stackView)
            
            stackView.addArrangedSubview(imageView)
            
        }
        
        func setupConstraints() {
            
            stackView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            ])
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: stackView.topAnchor),
                imageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
                imageView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
            ])
           
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            
            imageView.frame = CGRect(x: 0, y: 0, width: 164, height: 130)
        }
            
        func setup1(with local: CamaroesModel) {
            imageView.image = local.imagem
        }
        
        override func prepareForReuse() {
            super.prepareForReuse()
        }
        
    }

    #if DEBUG
    import SwiftUI

    @available(iOS 13, *)
    struct CamaroesPotiguarCollectionViewCell_Preview: PreviewProvider {
        static var previews: some View {
            // view controller using programmatic UI
            Group {
                CamaroesPotiguarCollectionViewCell().showPreview().previewLayout(.fixed(width: 157.0, height: 136.0))
                //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }
    #endif

