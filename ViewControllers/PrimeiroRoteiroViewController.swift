//
//  PrimeiroRoteiroViewController.swift
//  CarapacaApp
//
//  Created by Cecília on 15/09/22.
//

import UIKit

class PrimeiroRoteiroViewController: UIViewController {
    // MARK: - Inicializar os componentes/ as views
    
    let topoStackView = UIStackView()
    let destinosView = UIView()
    let botaoView = UIView()
    
    let botaoVoltar = UIButton()
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

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        
        setupViewHierarchy()
        setupConstraints()
        setupAttributes()
    }
    
    // MARK: - Setup Hierarchy
    func setupViewHierarchy(){
        view.addSubview(topoStackView)
        view.addSubview(destinosView)
        view.addSubview(botaoView)
        
        destinosView.addSubview(tituloStack)
        destinosView.addSubview(nomeDestinoStack)
        destinosView.addSubview(explorarStack)
        
        botaoView.addSubview(botaoConcluido)
        
        topoStackView.addArrangedSubview(botaoVoltar)
        topoStackView.addArrangedSubview(tituloDestino)
        
        tituloStack.addArrangedSubview(iconMap)
        tituloStack.addArrangedSubview(meusDestinosLabel)
        
        nomeDestinoStack.addArrangedSubview(iconLuz)
        nomeDestinoStack.addArrangedSubview(nomeDestinoLabel)
        
        explorarStack.addArrangedSubview(linhaView)
        explorarStack.addArrangedSubview(botaoExplorar)

    }
    
    // MARK: - Setup Constraints
    func setupConstraints(){
        topoStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        topoStackView.topAnchor.constraint(equalTo: view.topAnchor),
        topoStackView.bottomAnchor.constraint(equalTo: destinosView.topAnchor, constant: -16),
        topoStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        topoStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        topoStackView.heightAnchor.constraint(equalToConstant: 166)
        ])
        
        botaoVoltar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        botaoVoltar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
        botaoVoltar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        botaoVoltar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -340),
        botaoVoltar.heightAnchor.constraint(equalToConstant: 28),
        ])
        
        tituloDestino.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        tituloDestino.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        tituloDestino.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        tituloDestino.bottomAnchor.constraint(equalTo: destinosView.topAnchor, constant: 0),
        ])
        
        destinosView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        destinosView.topAnchor.constraint(equalTo: topoStackView.bottomAnchor,constant: 16),
        destinosView.bottomAnchor.constraint(equalTo: explorarStack.bottomAnchor, constant: 16),
        destinosView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        destinosView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
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
        botaoExplorar.trailingAnchor.constraint(equalTo: botaoView.trailingAnchor, constant: -16),
        botaoExplorar.leadingAnchor.constraint(equalTo: botaoView.leadingAnchor, constant: 56),
        botaoExplorar.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        botaoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        botaoView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        botaoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        botaoView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        botaoView.heightAnchor.constraint(equalToConstant: 80)
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
    
    // MARK: - Setup Attributes
    func setupAttributes(){
        topoStackView.axis = .vertical
        topoStackView.alignment = .fill
        topoStackView.distribution = .fill
        topoStackView.spacing = 0
        topoStackView.backgroundColor = .white
        
        destinosView.backgroundColor = .white
        destinosView.layer.cornerRadius = 16
        
        let iconVoltar = UIImage(systemName: "arrow.left")
        botaoVoltar.setImage(iconVoltar, for: .normal)
        botaoVoltar.imageView?.contentMode = .left
        botaoVoltar.backgroundColor = .white
        botaoVoltar.tintColor = .black
        
        tituloDestino.textColor = .black
        tituloDestino.text = "Pelo Nordeste"
        tituloDestino.font = UIFont.boldSystemFont(ofSize: 28)
        tituloDestino.textAlignment = .left
        
        tituloStack.backgroundColor = .white
        tituloStack.axis = .horizontal
        tituloStack.alignment = .center
        tituloStack.distribution = .fillProportionally
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
struct PrimeiroRoteiroViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            UINavigationController(rootViewController: PrimeiroRoteiroViewController()).showPreview().previewDevice("iPhone 13")
            //ViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
