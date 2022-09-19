//
//  LocalizacaoViewController.swift
//  Carapaca App rascunho
//
//  Created by mcor on 14/09/22.
//

import UIKit

class LocalizacaoViewController: UIViewController {
    
    
    let button: UIButton = {
        let button = UIButton(configuration: .plain())
        button.tintColor = UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00)
        button.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        return button
    }()

    let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Endereço de busca"
        label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()

    let tituloStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .fill
        stackView.spacing = 0
//        stackView.backgroundColor = .red
        return stackView
    }()

    let stackView = UIStackView()
   

    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Buscar local"
        searchBar.searchBarStyle = .minimal

        return searchBar
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        setupConstraints()
    }
    
    func setupHierarchy() {
        view.addSubview(stackView)
//        view.addSubview(tituloStackView)
        view.addSubview(searchBar)
        
        
       stackView.addSubview(tituloStackView)
        
     

        tituloStackView.addArrangedSubview(button)
        tituloStackView.addArrangedSubview(label)
    }

    func setupConstraints() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])

        tituloStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloStackView.topAnchor.constraint(equalTo: stackView.topAnchor),
            tituloStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            tituloStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
//            tituloStackView.heightAnchor.constraint(equalToConstant: 80),
            tituloStackView.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: 76)
        ])


        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: tituloStackView.topAnchor),
            button.leadingAnchor.constraint(equalTo: tituloStackView.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: tituloStackView.trailingAnchor, constant: -331),
            button.bottomAnchor.constraint(equalTo: tituloStackView.bottomAnchor)
        ])

        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: tituloStackView.topAnchor),
            label.bottomAnchor.constraint(equalTo: tituloStackView.bottomAnchor),
            label.centerXAnchor.constraint(equalTo: stackView.centerXAnchor)
        ])

      

        searchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            searchBar.leadingAnchor.constraint(equalTo: view
                .leadingAnchor, constant: 16),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)

        ])
        
        stackView.backgroundColor = .white
    }
    
    
    
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct LocalizacaoViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            LocalizacaoViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

