//
//  ColocarDestinosView.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 14/09/22.
//

import UIKit

class ColocarDestinosView: UIView {
    // MARK: - Inicializar os componentes/ as views
    let title1Label = UILabel()
    let title2Label = UILabel()
    let roteiroTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
    let adicionarButton = UIButton(configuration: .filled())
    let proximoButton = UIButton(configuration: .filled())
    
    let title1LabelContainer = UIView()
    let title2LabelContainer = UIView()
    let roteiroTextFieldContainer = UIView()
    let adicionarButtonContainer = UIView()
    let proximoButtonContainer = UIView()
    
    let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViewHierarchy()
        setupConstraints()
        setUpAttributes()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy(){
        // MARK: - Setup na hierarquia das subviews
        self.addSubview(title1Label)
        self.addSubview(title2Label)
        self.addSubview(roteiroTextField)
        self.addSubview(proximoButton)
        self.addSubview(adicionarButton)
        self.addSubview(stackView)
        
        stackView.addArrangedSubview(title1LabelContainer)
        stackView.addArrangedSubview(title2LabelContainer)
        stackView.addArrangedSubview(roteiroTextFieldContainer)
        stackView.addArrangedSubview(adicionarButtonContainer)
        stackView.addArrangedSubview(proximoButtonContainer)
        
        title1LabelContainer.addSubview(title1Label)
        roteiroTextFieldContainer.addSubview(roteiroTextField)
        adicionarButtonContainer.addSubview(adicionarButton)
        proximoButtonContainer.addSubview(proximoButton)
        
    }
    
    func setupConstraints(){
        // MARK: - Configuração das constraints de auto layout
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        title1Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title1Label.leadingAnchor.constraint(equalTo: title1LabelContainer.leadingAnchor),
            title1Label.trailingAnchor.constraint(equalTo: title1LabelContainer.trailingAnchor),
            title1Label.topAnchor.constraint(equalTo: self.topAnchor, constant: 90),
            title1Label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
        ])
        
        title2Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title2Label.topAnchor.constraint(equalTo: title1Label.bottomAnchor, constant: 16),
            title2Label.leadingAnchor.constraint(equalTo: title2LabelContainer.leadingAnchor, constant: 16),
            title2Label.trailingAnchor.constraint(equalTo: title2LabelContainer.trailingAnchor, constant: -16)
            
        ])
        
        roteiroTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roteiroTextField.topAnchor.constraint(equalTo: title1Label.bottomAnchor, constant: 32),
            roteiroTextField.leadingAnchor.constraint(equalTo: roteiroTextFieldContainer.leadingAnchor, constant: 16),
            roteiroTextField.trailingAnchor.constraint(equalTo: roteiroTextFieldContainer.trailingAnchor, constant: -30)
        ])
        
        
        adicionarButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            adicionarButton.trailingAnchor.constraint(equalTo: adicionarButtonContainer.trailingAnchor, constant: -16),
            adicionarButton.topAnchor.constraint(equalTo: roteiroTextField.bottomAnchor, constant: 34),
            adicionarButton.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        proximoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            proximoButton.centerXAnchor.constraint(equalTo: proximoButtonContainer.centerXAnchor),
            proximoButton.leadingAnchor.constraint(equalTo: proximoButtonContainer.leadingAnchor, constant: 16),
            proximoButton.trailingAnchor.constraint(equalTo: proximoButtonContainer.trailingAnchor, constant: -16),
            proximoButton.heightAnchor.constraint(equalToConstant: 44)

        ])
        
    }
    
    func setUpAttributes(){
        // MARK: - Configuração dos atributos dos componentes
        title1Label.textAlignment = .left
        title1Label.text = "Quais cidades você quer curtir?"
        title1Label.textColor = .black
        title1Label.font = UIFont.systemFont(ofSize: 28)
        title1Label.lineBreakMode = .byWordWrapping
        title1Label.numberOfLines = 2
        
        title2Label.textAlignment = .left
        title2Label.text = "Primeiro destino"
        title2Label.textColor = .gray
        title2Label.font = UIFont.systemFont(ofSize: 12)
        title2Label.lineBreakMode = .byWordWrapping
        title2Label.numberOfLines = 1
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 22
        
        roteiroTextField.placeholder = "Escolha uma cidade ou estado"
        roteiroTextField.font = UIFont.systemFont(ofSize: 17)
        roteiroTextField.backgroundColor = UIColor.white
        roteiroTextField.borderStyle = .roundedRect
        roteiroTextField.frame = CGRect(x: 0, y: 0, width: 343, height: 44)
//        roteiroTextField.layer.borderColor = UIColor.gray.cgColor
//        roteiroTextField.layer.borderWidth = 1
//        roteiroTextField.backgroundColor = UIColor.secondarySystemBackground
        roteiroTextField.backgroundColor = UIColor.init(red: 213.0/255.0, green: 207.0/255.0, blue: 207.0/255.0, alpha: 1)
        let searchIcon = UIImageView.init(frame: CGRect.init(x: 10, y: 10, width: 20, height: 20))
                searchIcon.image = UIImage.init(systemName: "magnifyingglass")
                searchIcon.tintColor = .black
                let leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 40, height: 40))
                leftView.backgroundColor = .clear
                leftView.addSubview(searchIcon)
                roteiroTextField.leftView = leftView
                roteiroTextField.leftViewMode = .always
        
        
        
        adicionarButton.setTitle("  Adicionar  ", for: .normal)
        adicionarButton.setTitleColor(.white, for: .normal)
        adicionarButton.tintColor = .systemBlue
        adicionarButton.layer.cornerCurve = .continuous
        adicionarButton.layer.cornerRadius = 12
        adicionarButton.clipsToBounds = true
        adicionarButton.tintColor =  UIColor(red: 0.05, green: 0.38, blue: 0.68, alpha: 1.00)
        
        proximoButton.setTitle("  Próximo  ", for: .normal)
        proximoButton.setTitleColor(.white, for: .normal)
        proximoButton.tintColor = .systemGreen
        proximoButton.layer.cornerCurve = .continuous
        proximoButton.layer.cornerRadius = 44 / 2
        proximoButton.clipsToBounds = true
        proximoButton.tintColor =  UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
        
    }
}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ColocarDestinosView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ColocarDestinosView().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
