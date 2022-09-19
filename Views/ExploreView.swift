//
//  ExploreView.swift
//  Carapaca App rascunho
//
//  Created by mcor on 15/09/22.
//

import UIKit

class ExploreView: UIView {
    
    
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
    
    let title1Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Explore o mundo"
        label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let title2Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Encontre os melhores lugares para você visitar!"
        label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    let localizacaoButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Sua Localização", for: .normal)
        button.setTitleColor(UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00), for: .normal)
        button.tintColor = UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00)
        button.layer.cornerCurve = .continuous
        button.layer.cornerRadius = 20
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setContentHuggingPriority(.defaultLow, for: .horizontal)
        button.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        return button
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
        addSubview(title1Label)
        addSubview(title2Label)
        addSubview(localizacaoButton)
        
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
        
        NSLayoutConstraint.activate([
            title1Label.leadingAnchor.constraint(equalTo: viewGreen.leadingAnchor, constant: 16),
            title1Label.bottomAnchor.constraint(equalTo: viewGreen.bottomAnchor, constant: -88),
            title1Label.topAnchor.constraint(equalTo: viewGreen.topAnchor, constant: 107),
            title1Label.trailingAnchor.constraint(equalTo: viewGreen.trailingAnchor, constant: -103)
            
        ])
        
        NSLayoutConstraint.activate([
            title2Label.topAnchor.constraint(equalTo: title1Label.bottomAnchor, constant: 11),
            title2Label.leadingAnchor.constraint(equalTo: viewGreen.leadingAnchor, constant: 16),
            title2Label.trailingAnchor.constraint(equalTo: viewGreen.trailingAnchor, constant: -16),
            title2Label.bottomAnchor.constraint(equalTo: viewGreen.bottomAnchor, constant: -55)

        ])
        
        NSLayoutConstraint.activate([
            localizacaoButton.topAnchor.constraint(equalTo: title2Label.bottomAnchor, constant: 6),
            localizacaoButton.leadingAnchor.constraint(equalTo: viewGreen.leadingAnchor, constant: 16),
            localizacaoButton.trailingAnchor.constraint(lessThanOrEqualTo: viewGreen.trailingAnchor, constant: -16),
            localizacaoButton.bottomAnchor.constraint(equalTo: viewGreen.bottomAnchor, constant: -16)
        ])
        
        
    }
    
  
}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ExploreView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ExploreView().showPreview().previewLayout(.fixed(width: 375.0, height: 219.0))
            //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
