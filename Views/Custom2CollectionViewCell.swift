//
//  Custom2CollectionViewCell.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 22/09/22.
//

import UIKit

class Custom2CollectionViewCell: UICollectionViewCell {
}
//    static let identifier = "Custom2CollectionViewCell"
//    let novaViagem = NovaViagemView()
//
//    let myImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(systemName: "bag.fill")
//        imageView.contentMode = .scaleAspectFit
//        imageView.clipsToBounds = true
//        return imageView
//    } ()
//
//    let myLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Mochilao Grandao MESMO"
//        label.numberOfLines = 2
//        label.textAlignment = .left
//        label.clipsToBounds = true
//        label.font = UIFont.boldSystemFont(ofSize: 15)
//        return label
//    } ()
//
//    let imageViewContainer = UIView()
//    let labelContainer = UIView()
//
//    let stackView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.axis = .vertical
//        stackView.distribution = .fillProportionally
//        stackView.alignment = .leading
//        stackView.spacing = 0
//        return stackView
//    }()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupHierarchy()
//        setupConstraints()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func setupHierarchy(){
//        contentView.addSubview(stackView)
//
//        stackView.addArrangedSubview(myImageView)
//        stackView.addArrangedSubview(myLabel)
//    }
//    func setupConstraints(){
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
//            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
//        ])
//
//        myImageView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            myImageView.topAnchor.constraint(equalTo: stackView.topAnchor),
//            myImageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
//            myImageView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
//            myImageView.bottomAnchor.constraint(equalTo: myLabel.topAnchor)
//        ])
//
//        myLabel.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            myLabel.topAnchor.constraint(equalTo: myImageView.bottomAnchor),
//            myLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
//            myLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
//            myLabel.bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
//        ])
//    }
//
//
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        myImageView.frame = CGRect(x: 0, y: 0, width: 164, height: 113)
//        myLabel.frame = CGRect(x: 0, y: 0, width: 163, height: 19)
//
//    }
//
////    public func configure(label: String){
////        myLabel.text = label
////    }
//
//    override func prepareForReuse() {
//        super.prepareForReuse()
////        myLabel.text = nil
//    }
//
//    func setup(with local: HomeModel) {
//        myImageView.image = local.imagem
//        myLabel.text = local.texto
//    }
//
//}
//// MARK: - Preview
//#if DEBUG
//import SwiftUI
//
//@available(iOS 13, *)
//struct Custom2CollectionViewCell_Preview: PreviewProvider {
//    static var previews: some View {
//        // view controller using programmatic UI
//        Group {
//            Custom2CollectionViewCell().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.portrait)
////            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
//        }
//    }
//}
//#endif

