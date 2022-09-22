//
//  PrimeiroRoteiroTableViewCell.swift
//  CarapacaApp
//
//  Created by Cecília on 21/09/22.
//

import UIKit

class PrimeiroRoteiro1TableViewCell: UITableViewCell {
    
    static let identifier = "PrimeiroRoteiro1TableViewCell"
    
    var botaoExplorar = UIView()
    var botaoExplorar2 = UIView()
    let linha = UIView()
    let label = UILabel()
    let label2 = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = UIColor.white
        contentView.layer.cornerRadius = 16
        
        contentView.addSubview(botaoExplorar)
        contentView.addSubview(botaoExplorar2)
        contentView.addSubview(linha)
        
        botaoExplorar.addSubview(label)
        botaoExplorar2.addSubview(label2)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 4, left: 2, bottom: 4, right: 2))
        
        label.textColor = .black
        label.text = "- Praiano Bar"
        label.font = .systemFont(ofSize: 18)
        
        label.frame = CGRect(x: 0,
                                  y: -4,
                                  width: contentView.frame.size.width - 10,
                                  height: contentView.frame.size.height)
        
        label2.textColor = .systemGray
        label2.text = "+"
        label2.font = .systemFont(ofSize: 24)
        
        label2.frame = CGRect(x: 17,
                                  y: -4,
                                  width: contentView.frame.size.width - 10,
                                  height: contentView.frame.size.height)
        
        linha.frame = CGRect(x: 12,
                             y: 4,
                             width: 4,
                             height: 44)

        linha.backgroundColor = .systemGray3
        
        botaoExplorar.frame = CGRect(x: 32,
                                  y: 4,
                                  width: 188,
                                  height: 44)
        
        botaoExplorar.layer.cornerCurve = .circular
        botaoExplorar.layer.cornerRadius = 16
        botaoExplorar.clipsToBounds = true
        botaoExplorar.backgroundColor = .white
        
        botaoExplorar2.frame = CGRect(x: 280,
                                  y: 4,
                                  width: 50,
                                  height: 44)
        
        botaoExplorar2.layer.cornerCurve = .circular
        botaoExplorar2.layer.cornerRadius = 16
        botaoExplorar2.clipsToBounds = true
        botaoExplorar2.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        
        
    }
    
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct PrimeiroRoteiro1TableViewCell_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            PrimeiroRoteiro1TableViewCell().showPreview().previewLayout(PreviewLayout.fixed(width: 343, height: 60))
            //ViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

