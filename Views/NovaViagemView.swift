//
//  NovaViagemView.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 13/09/22.
//

import UIKit

class NovaViagemView: UIView {
    // MARK: - Inicializar os componentes/ as views
    let title1Label = UILabel()
    let roteiroTextField = UITextField()
    let proximoButton = UIButton(configuration: .filled())
    
    let title1LabelContainer = UIView()
    let roteiroTextFieldContainer = UIView()
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
        self.addSubview(roteiroTextField)
        self.addSubview(proximoButton)
        self.addSubview(stackView)
        
        stackView.addArrangedSubview(title1LabelContainer)
        stackView.addArrangedSubview(roteiroTextFieldContainer)
        stackView.addArrangedSubview(proximoButtonContainer)
        
        title1LabelContainer.addSubview(title1Label)
        roteiroTextFieldContainer.addSubview(roteiroTextField)
        proximoButtonContainer.addSubview(proximoButton)
    }
    
    func setUpAttributes(){
        // MARK: - Configuração dos atributos dos componentes
        title1Label.textAlignment = .left
        title1Label.text = "Primeiro, dê um nome para sua aventura"
        title1Label.textColor = .black
        title1Label.font = UIFont.systemFont(ofSize: 28)
        title1Label.lineBreakMode = .byWordWrapping
        title1Label.numberOfLines = 2
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 22
        
        roteiroTextField.placeholder = "Ex.: Mochilão pela Ásia 2023"
        roteiroTextField.font = UIFont.systemFont(ofSize: 17)
        roteiroTextField.backgroundColor = UIColor.white
//        roteiroTextField.borderStyle = .roundedRect
        roteiroTextField.layer.cornerRadius = 12
        roteiroTextField.frame = CGRect(x: 0, y: 0, width: 343, height: 44)
//        roteiroTextField.backgroundColor = UIColor.secondarySystemBackground
        roteiroTextField.backgroundColor = UIColor.init(red: 213.0/255.0, green: 207.0/255.0, blue: 207.0/255.0, alpha: 1)
        
        
        
        proximoButton.setTitle("  Próximo  ", for: .normal)
        proximoButton.setTitleColor(.white, for: .normal)
        proximoButton.tintColor = UIColor(red: 0.10, green: 0.42, blue: 0.33, alpha: 1.00)
        proximoButton.layer.cornerCurve = .continuous
        proximoButton.layer.cornerRadius = 20
        proximoButton.clipsToBounds = true
        
   
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
        
        roteiroTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roteiroTextField.topAnchor.constraint(equalTo: title1Label.bottomAnchor, constant: 16),
            roteiroTextField.leadingAnchor.constraint(equalTo: roteiroTextFieldContainer.leadingAnchor, constant: 16),
            roteiroTextField.trailingAnchor.constraint(equalTo: roteiroTextFieldContainer.trailingAnchor, constant: -16)
        ])
        
        proximoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            proximoButton.trailingAnchor.constraint(equalTo: proximoButtonContainer.trailingAnchor, constant: -16),
            proximoButton.topAnchor.constraint(equalTo: roteiroTextField.bottomAnchor, constant: 34)
        ])
    }

}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct NovaViagemView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            NovaViagemView().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
