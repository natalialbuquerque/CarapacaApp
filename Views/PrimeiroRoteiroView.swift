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
    let destinosView = UIView()
    let botaoView = UIView()

    let tituloDestino = UILabel()
    let botaoConcluido = UIButton()
    
    let tituloStack = UIStackView()
    let nomeDestinoStack = UIStackView()
    let explorarStack = UIStackView()
    
    let meusDestinosLabel = UILabel()
    let iconMap = UIImageView(image: UIImage(systemName: "map.fill"))
    let iconLuz = UIImageView(image: UIImage(named: "luz"))
    let nomeDestinoLabel = UILabel()
    let linhaView = UIView()
    let botaoExplorar = UIButton()
    
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
        destinosView.addSubview(nomeDestinoStack)
        destinosView.addSubview(explorarStack)
        
        botaoView.addSubview(botaoConcluido)
        
        topoView.addSubview(tituloDestino)
        
        tituloStack.addArrangedSubview(iconMap)
        tituloStack.addArrangedSubview(meusDestinosLabel)
        
        nomeDestinoStack.addArrangedSubview(iconLuz)
        nomeDestinoStack.addArrangedSubview(nomeDestinoLabel)
        
        explorarStack.addArrangedSubview(linhaView)
        explorarStack.addArrangedSubview(botaoExplorar)
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
            destinosView.bottomAnchor.constraint(equalTo: explorarStack.bottomAnchor, constant: 16),
            destinosView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            destinosView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
        
        
        tituloStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tituloStack.topAnchor.constraint(equalTo: destinosView.topAnchor, constant: 16),
            tituloStack.leadingAnchor.constraint(equalTo: destinosView.leadingAnchor, constant: 16),
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
        
        nomeDestinoStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        nomeDestinoStack.topAnchor.constraint(equalTo: tituloStack.bottomAnchor, constant: 8),
        nomeDestinoStack.leadingAnchor.constraint(equalTo: destinosView.leadingAnchor, constant: 16),
        nomeDestinoStack.trailingAnchor.constraint(equalTo: destinosView.trailingAnchor, constant: -16),
        nomeDestinoStack.heightAnchor.constraint(equalToConstant: 32)
        ])
        
        iconLuz.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        iconLuz.leadingAnchor.constraint(equalTo: nomeDestinoStack.leadingAnchor, constant: 8),
        iconLuz.trailingAnchor.constraint(equalTo: nomeDestinoStack.trailingAnchor, constant: -300),
        iconLuz.centerXAnchor.constraint(equalTo: nomeDestinoStack.centerXAnchor),
        ])
        
        explorarStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        explorarStack.topAnchor.constraint(equalTo: nomeDestinoStack.bottomAnchor, constant: 8),
        explorarStack.leadingAnchor.constraint(equalTo: destinosView.leadingAnchor, constant: 16),
        explorarStack.trailingAnchor.constraint(equalTo: destinosView.trailingAnchor, constant: -16),
        explorarStack.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        linhaView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        linhaView.topAnchor.constraint(equalTo: explorarStack.topAnchor),
        linhaView.bottomAnchor.constraint(equalTo: explorarStack.bottomAnchor),
        linhaView.leadingAnchor.constraint(equalTo: explorarStack.leadingAnchor, constant: 16),
        linhaView.widthAnchor.constraint(equalToConstant: 2)
        ])
        
        botaoExplorar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            botaoExplorar.centerXAnchor.constraint(equalTo: explorarStack.centerXAnchor),
            botaoExplorar.trailingAnchor.constraint(equalTo: destinosView.trailingAnchor, constant: -16),
            botaoExplorar.leadingAnchor.constraint(equalTo: destinosView.leadingAnchor, constant: 56),
            botaoExplorar.heightAnchor.constraint(equalToConstant: 44)
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
        tituloStack.distribution = .fill
        tituloStack.spacing = 8
        
        iconMap.backgroundColor = .white
        iconMap.tintColor = .black
        iconMap.contentMode = .scaleToFill
        
        meusDestinosLabel.textColor = .black
        meusDestinosLabel.text = "Meus Destinos"
        meusDestinosLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        nomeDestinoStack.backgroundColor = .white
        nomeDestinoStack.axis = .horizontal
        nomeDestinoStack.alignment = .center
        nomeDestinoStack.distribution = .fillProportionally
        nomeDestinoStack.spacing = 12
        
        iconLuz.contentMode = .scaleAspectFill
        
        nomeDestinoLabel.textColor = .black
        nomeDestinoLabel.text = "Destino 1"
        nomeDestinoLabel.font = UIFont.boldSystemFont(ofSize: 17)

        explorarStack.backgroundColor = .white
        explorarStack.axis = .horizontal
        explorarStack.alignment = .center
        explorarStack.distribution = .fillProportionally
        explorarStack.spacing = 20
        
        linhaView.backgroundColor = UIColor(red: 0.72, green: 0.72, blue: 0.72, alpha: 1.00)
        linhaView.contentMode = .scaleAspectFill
        linhaView.layer.cornerRadius = 4
        
        botaoExplorar.setTitle("Explorar", for: .normal)
        botaoExplorar.setTitleColor(.black, for: .normal)
        botaoExplorar.layer.cornerCurve = .circular
        botaoExplorar.layer.cornerRadius = 24
        botaoExplorar.clipsToBounds = true
        botaoExplorar.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        
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
