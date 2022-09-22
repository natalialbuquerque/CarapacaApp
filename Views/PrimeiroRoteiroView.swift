//
//  PrimeiroRoteiroView.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 19/09/22.
//

import UIKit

class PrimeiroRoteiroView: UIView {
    // MARK: - Inicializar os componentes/ as views
    
    let topoView = UIView()
    let tituloDestino = UILabel()
    
    let destinosView = UIView()
    let tituloStack = UIStackView()
    let meusDestinosLabel = UILabel()
    let iconMap = UIImageView(image: UIImage(systemName: "map.fill"))
    
    var destinoTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        table.register(PrimeiroRoteiroTableViewCell.self, forCellReuseIdentifier: PrimeiroRoteiroTableViewCell.identifier)
        
        return table
        }()
    
    let botaoView = UIView()
    let botaoConcluido = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        
        setupViewHierarchy()
        setupConstraints()
        setUpAttributes()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy(){
        // MARK: - Setup Hierarchy
        self.addSubview(topoView)
        self.addSubview(destinosView)
        self.addSubview(botaoView)
        
        destinosView.addSubview(tituloStack)
        destinosView.addSubview(destinoTableView)
        
        botaoView.addSubview(botaoConcluido)
        
        topoView.addSubview(tituloDestino)
        
        tituloStack.addArrangedSubview(iconMap)
        tituloStack.addArrangedSubview(meusDestinosLabel)
    }
    
    func setupConstraints(){
        // MARK: - Setup Constraints
        topoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        topoView.topAnchor.constraint(equalTo: self.topAnchor),
        topoView.bottomAnchor.constraint(equalTo: destinosView.topAnchor, constant: -16),
        topoView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        topoView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        topoView.heightAnchor.constraint(equalToConstant: 166)
        ])
        
        
        tituloDestino.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloDestino.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            tituloDestino.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tituloDestino.bottomAnchor.constraint(equalTo: topoView.bottomAnchor, constant: -14),
        ])
        
        destinosView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            destinosView.topAnchor.constraint(equalTo: topoView.bottomAnchor,constant: 16),
            destinosView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -200),
            destinosView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            destinosView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
        
        
        tituloStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloStack.topAnchor.constraint(equalTo: destinosView.topAnchor, constant: 16),
            tituloStack.leadingAnchor.constraint(equalTo: destinosView.leadingAnchor, constant: 8),
            tituloStack.trailingAnchor.constraint(equalTo: destinosView.trailingAnchor, constant: -16),
            tituloStack.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        iconMap.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        iconMap.leadingAnchor.constraint(equalTo: tituloStack.leadingAnchor, constant: 8),
        iconMap.trailingAnchor.constraint(equalTo: tituloStack.trailingAnchor, constant: -300),
        iconMap.centerXAnchor.constraint(equalTo: tituloStack.centerXAnchor),
        ])
        
        meusDestinosLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        meusDestinosLabel.trailingAnchor.constraint(equalTo: tituloStack.trailingAnchor),
        meusDestinosLabel.topAnchor.constraint(equalTo: tituloStack.topAnchor, constant: -4),
        ])
        
        destinoTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            destinoTableView.topAnchor.constraint(equalTo: tituloStack.bottomAnchor, constant: -8),
            destinoTableView.leadingAnchor.constraint(equalTo: destinosView.leadingAnchor, constant: 8),
            destinoTableView.trailingAnchor.constraint(equalTo: destinosView.trailingAnchor, constant: -8),
            destinoTableView.bottomAnchor.constraint(equalTo: destinosView.bottomAnchor, constant: -16)
        ])
        
        botaoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            botaoView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            botaoView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            botaoView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            botaoView.heightAnchor.constraint(equalToConstant: 90)
        ])
        
        botaoConcluido.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        botaoConcluido.centerXAnchor.constraint(equalTo: botaoView.centerXAnchor),
        botaoConcluido.centerYAnchor.constraint(equalTo: botaoView.centerYAnchor),
        botaoConcluido.trailingAnchor.constraint(equalTo: botaoView.trailingAnchor, constant: -16),
        botaoConcluido.leadingAnchor.constraint(equalTo: botaoView.leadingAnchor, constant: 16),
        botaoConcluido.heightAnchor.constraint(equalToConstant: 48)
        ])
        
    }
    func setUpAttributes(){
        // MARK: - Setup Attributes
        
        topoView.backgroundColor = .white
        
        destinosView.backgroundColor = .white
        destinosView.layer.cornerRadius = 16
        
        tituloDestino.textColor = .black
        tituloDestino.text = "Pelo Nordeste"
        tituloDestino.font = UIFont.boldSystemFont(ofSize: 28)
        tituloDestino.textAlignment = .left
        
        tituloStack.backgroundColor = .white
        tituloStack.axis = .horizontal
        tituloStack.alignment = .center
        tituloStack.distribution = .fillProportionally
        tituloStack.spacing = 2
        
        iconMap.backgroundColor = .white
        iconMap.tintColor = .black
        iconMap.contentMode = .scaleAspectFit
        
        meusDestinosLabel.textColor = .black
        meusDestinosLabel.text = "Meus Destinos"
        meusDestinosLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        botaoView.backgroundColor = .white
        botaoView.clipsToBounds = true
        botaoView.layer.cornerRadius = 16
        
        botaoConcluido.setTitle("Concluir roteiro", for: .normal)
        botaoConcluido.setTitleColor(.white, for: .normal)
        botaoConcluido.tintColor = .white
        botaoConcluido.layer.cornerCurve = .circular
        botaoConcluido.layer.cornerRadius = 16
        botaoConcluido.clipsToBounds = true
        botaoConcluido.backgroundColor = UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
        botaoConcluido.tintColor = .black
        
    }
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct PrimeiroRoteiroView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            PrimeiroRoteiroView().showPreview().previewDevice("iPhone 11").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
