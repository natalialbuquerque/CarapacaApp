//
//  PopUpLocalAddView.swift
//  Carapaca App rascunho
//
//  Created by mcor on 17/09/22.
//

import UIKit

class PopUpLocalAddView: UIView {

    let imagemCheck: UIImageView = {
        let imagemCheck = UIImageView()
        imagemCheck.image = UIImage(systemName: "checkmark.bubble.fill")
        imagemCheck.tintColor = UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
        imagemCheck.contentMode = .scaleAspectFit
        return imagemCheck
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Local adicionado com sucesso!"
        label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textAlignment = .center
        return label
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
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
        addSubview(stackView)
        
        stackView.addArrangedSubview(imagemCheck)
        stackView.addArrangedSubview(label)
    }
    
    func setupConstraints() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        imagemCheck.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imagemCheck.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            imagemCheck.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 16),
            imagemCheck.heightAnchor.constraint(equalToConstant: 56)
            
        ])
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
            label.bottomAnchor.constraint(equalTo: stackView.bottomAnchor,constant: -16)
        ])
    }
}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct PopUpLocalAddView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            PopUpLocalAddView().showPreview().previewLayout(.fixed(width: 334.0, height: 117.0))
            //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
