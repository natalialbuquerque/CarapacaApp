//
//  ConstrucaoDoRoteiroViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class ConstrucaoDoRoteiroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    override func loadView() {
        // Inicialização da view que irá ser atribuída como view raiz do view controller
        let view = UIView()
        // MARK: - Inicializar os componentes/ as views
        let title1Label = UILabel()
        let textLabel = UILabel()
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 343, height: 119))
        let view2 = UIView()
        let view3 = UIView()
        let explorarButton = UIButton(configuration: .filled())
        let concluirRoteiroButton = UIButton(configuration: .filled())
        
        let title1LabelContainer = UIView()
        let textLabelContainer = UIView()
        let view1Container = UIView()
        let view2Container = UIView()
        let view3Container = UIView()
        let explorarButtonContainer = UIView()
        let concluirRoteiroButtonContainer = UIView()
        
        let stackView = UIStackView()
        
        // MARK: - Setup na hierarquia das subviews
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(title1Label)
//        view.addSubview(textLabel)
        view.addSubview(concluirRoteiroButton)
//        view.addSubview(explorarButton)
        view.addSubview(stackView)
        
        
        stackView.addArrangedSubview(title1LabelContainer)
        stackView.addArrangedSubview(view1Container)
        stackView.addArrangedSubview(textLabelContainer)
        stackView.addArrangedSubview(explorarButtonContainer)
        stackView.addArrangedSubview(concluirRoteiroButtonContainer)
        stackView.addArrangedSubview(view2Container)
        stackView.addArrangedSubview(view3Container)
        
        title1LabelContainer.addSubview(title1Label)
        textLabelContainer.addSubview(textLabel)
        explorarButtonContainer.addSubview(explorarButton)
        concluirRoteiroButtonContainer.addSubview(concluirRoteiroButton)
    
        
        
        
        // MARK: - Configuração das constraints de auto layout
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view1.centerXAnchor.constraint(equalTo: view1Container.centerXAnchor)
        ])
        
        title1Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title1Label.leadingAnchor.constraint(equalTo: title1LabelContainer.leadingAnchor),
            title1Label.trailingAnchor.constraint(equalTo: title1LabelContainer.trailingAnchor),
            title1Label.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            title1Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: title1Label.bottomAnchor, constant: 16),
            textLabel.leadingAnchor.constraint(equalTo: textLabelContainer.leadingAnchor, constant: 91),
            textLabel.trailingAnchor.constraint(equalTo: textLabelContainer.trailingAnchor, constant: -91),
            textLabel.centerYAnchor.constraint(equalTo: textLabelContainer.centerYAnchor)
        ])
        
        
        explorarButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            explorarButton.trailingAnchor.constraint(equalTo: explorarButtonContainer.trailingAnchor, constant: -16),
            
        ])
        
        concluirRoteiroButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            concluirRoteiroButton.centerXAnchor.constraint(equalTo: concluirRoteiroButtonContainer.centerXAnchor),
            concluirRoteiroButton.leadingAnchor.constraint(equalTo: concluirRoteiroButtonContainer.leadingAnchor, constant: 16),
            concluirRoteiroButton.trailingAnchor.constraint(equalTo: concluirRoteiroButtonContainer.trailingAnchor, constant: -16),
            concluirRoteiroButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100)
        ])
        
        // MARK: - Configuração dos atributos dos componentes
        view1.backgroundColor = .white
        
        title1Label.textAlignment = .left
        title1Label.text = "Pelo Nordeste"
        title1Label.textColor = .black
        title1Label.font = UIFont.systemFont(ofSize: 28)
        title1Label.lineBreakMode = .byWordWrapping
        title1Label.numberOfLines = 3
        
        textLabel.textAlignment = .left
        textLabel.text = "Encontre lugares para visitar e adicione aos seus roteiros"
        textLabel.textColor = .black
        textLabel.font = UIFont.systemFont(ofSize: 12)
        textLabel.lineBreakMode = .byWordWrapping
        textLabel.numberOfLines = 2
        
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 12
        
        explorarButton.setTitle("  Explorar  ", for: .normal)
        explorarButton.setTitleColor(.white, for: .normal)
        explorarButton.tintColor = .systemBlue
        explorarButton.layer.cornerCurve = .continuous
        explorarButton.layer.cornerRadius = 40
        explorarButton.clipsToBounds = true
        
        concluirRoteiroButton.setTitle("  Concluir Roteiro  ", for: .normal)
        concluirRoteiroButton.setTitleColor(.white, for: .normal)
        concluirRoteiroButton.tintColor = .systemGreen
        concluirRoteiroButton.layer.cornerCurve = .continuous
        concluirRoteiroButton.layer.cornerRadius = 40
        concluirRoteiroButton.clipsToBounds = true
        
        view1.backgroundColor = .black
        
        
        view.backgroundColor = .gray
        

        // Atribuição da view inicializada no começo da função
        self.view = view
    }
    
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ConstrucaoDoRoteiroViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ConstrucaoDoRoteiroViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
