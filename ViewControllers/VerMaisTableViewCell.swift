//
//  VerMaisTableViewCell.swift
//  CarapacaApp
//
//  Created by Cecília on 16/09/22.
//

import UIKit
import SwiftUI

class VerMaisTableViewCell: UITableViewCell {
    
    static let identifier = "VerMaisTableViewCell"
    
    var buttonTapCallback: () -> ()  = { }
        
        let button: UIButton = {
            let btn = UIButton()
            let iconFav = UIImage(systemName: "heart")
            btn.setImage(iconFav, for: .normal)
            btn.imageView?.contentMode = .center
            btn.tintColor = .red
            btn.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            return btn
        }()
    
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
    
    @objc func didTapButton() {
            buttonTapCallback()
        }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        contentView.layer.cornerRadius = 16
        
        contentView.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        contentView.addSubview(lugarImageView)
        contentView.addSubview(lugarLabel)
        contentView.addSubview(bairroLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4))
        
        let imageSize = contentView.frame.size.height-16
        //lugarImageView.layer.borderWidth = 1
        lugarImageView.layer.masksToBounds = false
        lugarImageView.layer.cornerRadius = 16
        lugarImageView.clipsToBounds = true
        lugarImageView.frame = CGRect(x: 8,
                                  y: 8,
                                  width: imageSize,
                                  height: imageSize)
        
        lugarLabel.frame = CGRect(x: 80,
                                  y: -12,
                                  width: contentView.frame.size.width - 10,
                                  height: contentView.frame.size.height)
        
        bairroLabel.frame = CGRect(x: 80,
                                  y: 12,
                                  width: contentView.frame.size.width - 10,
                                  height: contentView.frame.size.height)

        button.translatesAutoresizingMaskIntoConstraints = false
                button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
                button.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
                button.widthAnchor.constraint(equalToConstant: 40).isActive = true
                button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
    
}
}
