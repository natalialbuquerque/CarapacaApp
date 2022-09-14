//
//  CustomCollectionViewCell.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 14/09/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bag.fill")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    } ()
     
    private let myLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.textAlignment = .left
        label.clipsToBounds = true
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    } ()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        return stackView
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        contentView.backgroundColor = .systemRed
        
        setupHierarchy()
        setupConstraints()
    }
    
    func setupHierarchy(){
        self.addSubview(stackView)
        
        stackView.addArrangedSubview(myImageView)
        stackView.addArrangedSubview(myLabel)
    }
    
    func setupConstraints(){
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
//        stackView.backgroundColor = .blue
//
//        myLabel.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            myLabel.leadingAnchor.constraint(equalTo: labelContainer.leadingAnchor),
//            myLabel.trailingAnchor.constraint(equalTo: labelContainer.trailingAnchor),
//
//        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myLabel.frame = CGRect(x: 0,
                               y: contentView.frame.size.height-50,
                               width: contentView.frame.size.width-10,
                               height: 50)
        myImageView.frame = CGRect(x: 0,
                               y: 0,
                               width: contentView.frame.size.width-10,
                               height: contentView.frame.size.height-50)
    }
    
    public func configure(label: String){
        myLabel.text = label
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        myLabel.text = nil
    }
}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct CustomCollectionViewCell_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            CustomCollectionViewCell().showPreview().previewLayout(PreviewLayout.fixed(width:164,height:140))
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
