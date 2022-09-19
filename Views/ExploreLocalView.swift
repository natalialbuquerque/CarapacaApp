//
//  ExploreLocalView.swift
//  Carapaca App rascunho
//
//  Created by mcor on 17/09/22.
//

import UIKit

class ExploreLocalView: UIView {


    let viewGreen: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = UIColor(red: 0.10, green: 0.42, blue: 0.33, alpha: 1.00)
        view.layer.cornerRadius = 25
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewRetangularGreen: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = UIColor(named: "VerdePrimaria")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let stackViewTitulo: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.alignment = .center
        stackView.spacing = 0
        return stackView
    }()
    
    let pin: UIImageView = {
        let pin = UIImageView()
        pin.image = UIImage(systemName: "mappin")
        pin.tintColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        pin.contentMode = .scaleAspectFit
        return pin
    }()
    
    let localLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "(Local)"
        label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let title2Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Encontre os melhores lugares para visitar e adicione aos seus roteiros"
        label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
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
        addSubview(viewRetangularGreen)
        addSubview(viewGreen)
        addSubview(stackViewTitulo)
        addSubview(title2Label)
      
        stackViewTitulo.addArrangedSubview(pin)
        stackViewTitulo.addArrangedSubview(localLabel)
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            viewGreen.topAnchor.constraint(equalTo: topAnchor),
            viewGreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewGreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewGreen.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            viewRetangularGreen.topAnchor.constraint(equalTo: topAnchor),
            viewRetangularGreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewRetangularGreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewRetangularGreen.bottomAnchor.constraint(equalTo: viewGreen.centerYAnchor)
        ])
        
        stackViewTitulo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackViewTitulo.topAnchor.constraint(equalTo: viewGreen.topAnchor,constant: 107),
            stackViewTitulo.leadingAnchor.constraint(equalTo: viewGreen.leadingAnchor),
            stackViewTitulo.trailingAnchor.constraint(equalTo: viewGreen.trailingAnchor),
            stackViewTitulo.bottomAnchor.constraint(equalTo: viewGreen.bottomAnchor,constant: -88)
        ])
        
        pin.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pin.topAnchor.constraint(equalTo: stackViewTitulo.topAnchor),
            pin.leadingAnchor.constraint(equalTo: stackViewTitulo.leadingAnchor, constant: 14),
            pin.bottomAnchor.constraint(equalTo: stackViewTitulo.bottomAnchor)
            
        ])
        
        NSLayoutConstraint.activate([
            localLabel.leadingAnchor.constraint(equalTo: stackViewTitulo.leadingAnchor, constant: 30),
            localLabel.bottomAnchor.constraint(equalTo: stackViewTitulo.bottomAnchor),
            localLabel.topAnchor.constraint(equalTo: stackViewTitulo.topAnchor),
            localLabel.trailingAnchor.constraint(equalTo: stackViewTitulo.trailingAnchor)
            
        ])
        
        NSLayoutConstraint.activate([
            title2Label.topAnchor.constraint(equalTo: stackViewTitulo.bottomAnchor, constant: 10),
            title2Label.leadingAnchor.constraint(equalTo: viewGreen.leadingAnchor, constant: 16),
            title2Label.trailingAnchor.constraint(equalTo: viewGreen.trailingAnchor, constant: -16),
            title2Label.bottomAnchor.constraint(equalTo: viewGreen.bottomAnchor, constant: -30)

        ])
        
        
    }
    
  
}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ExploreLocalView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ExploreLocalView().showPreview().previewLayout(.fixed(width: 375.0, height: 219.0))
            //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
