//
//  FavoritosTableViewCell.swift
//  CarapacaApp
//
//  Created by Cecília on 13/09/22.
//

import UIKit

class FavoritosTableViewCell: UITableViewCell {
    
    static let identifier = "FavoritosTableViewCell"
    
    private let lugarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "praia")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let lugarLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.text = "pegou"
        return label
    }()
    
    private let bairroLabel: UILabel = {
        let bairro = UILabel()
        bairro.textColor = .systemGray
        bairro.font = .systemFont(ofSize: 14, weight: .regular)
        bairro.text = "bairro"
        return bairro
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //grayView.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        //grayView.layer.cornerRadius = 16
        
        contentView.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        contentView.layer.cornerRadius = 16
        contentView.addSubview(lugarImageView)
        contentView.addSubview(lugarLabel)
        contentView.addSubview(bairroLabel)
    }

    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4))
        
        let imageSize = contentView.frame.size.height-16
        
        //lugarImageView.layer.borderWidth = 1
        lugarImageView.layer.masksToBounds = false
        lugarImageView.layer.cornerRadius = 16
        lugarImageView.clipsToBounds = true
        
        lugarLabel.frame = CGRect(x: 80,
                                  y: -12,
                                  width: contentView.frame.size.width - 10,
                                  height: contentView.frame.size.height)
        
        bairroLabel.frame = CGRect(x: 80,
                                  y: 12,
                                  width: contentView.frame.size.width - 10,
                                  height: contentView.frame.size.height)
        
        lugarImageView.frame = CGRect(x: 8,
                                  y: 8,
                                  width: imageSize,
                                  height: imageSize)
    }
}
