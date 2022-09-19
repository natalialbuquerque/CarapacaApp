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
    let grayView = UIView()
    let cidadeLabel = UILabel()
    let title3Label = UILabel()
    let roteiroTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
    let adicionarButton = UIButton(configuration: .filled())
    let proximoButton = UIButton(configuration: .filled())
    
    let title1LabelContainer = UIView()
    let title2LabelContainer = UIView()
    let grayViewContainer = UIView()
    let cidadeLabelContainer = UIView()
    let title3LabelContainer = UIView()
    let roteiroTextFieldContainer = UIView()
    let adicionarButtonContainer = UIView()
    let proximoButtonContainer = UIView()
    
    let stackView = UIStackView()
    let stackView2 = UIStackView()
  
    
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
        self.addSubview(stackView)
        
        stackView.addArrangedSubview(title1LabelContainer)
        stackView.addArrangedSubview(title2LabelContainer)
        stackView.addArrangedSubview(grayViewContainer)
        
        grayViewContainer.addSubview(cidadeLabel)
        
        stackView.addArrangedSubview(title3LabelContainer)
        stackView.addArrangedSubview(stackView2)
        stackView2.addArrangedSubview(roteiroTextFieldContainer)
        stackView2.addArrangedSubview(adicionarButtonContainer)
        
        
        stackView.addArrangedSubview(proximoButtonContainer)
        
        
    
        title1LabelContainer.addSubview(title1Label)
        title2LabelContainer.addSubview(title2Label)
        grayViewContainer.addSubview(grayView)
        cidadeLabelContainer.addSubview(cidadeLabel)
        title3LabelContainer.addSubview(title3Label)
        roteiroTextFieldContainer.addSubview(roteiroTextField)
        adicionarButtonContainer.addSubview(adicionarButton)
        proximoButtonContainer.addSubview(proximoButton)
        
        

    }
    
    func setupConstraints(){
        // MARK: - Configuração das constraints de auto layout
        
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        

        
        title1Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title1Label.leadingAnchor.constraint(equalTo: title1LabelContainer.leadingAnchor, constant: 16),
            title1Label.trailingAnchor.constraint(equalTo: title1LabelContainer.trailingAnchor),
            title1Label.topAnchor.constraint(equalTo: self.topAnchor, constant: 90),
            title1Label.topAnchor.constraint(equalTo: title1LabelContainer.topAnchor),
            title1Label.bottomAnchor.constraint(equalTo: title1LabelContainer.bottomAnchor)
        ])

        title2Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title2Label.topAnchor.constraint(equalTo: title2LabelContainer.topAnchor, constant: 16),
            title2Label.bottomAnchor.constraint(equalTo: title2LabelContainer.bottomAnchor),
            title2Label.leadingAnchor.constraint(equalTo: title2LabelContainer.leadingAnchor, constant: 24)
        ])
        
        grayView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            grayView.heightAnchor.constraint(equalToConstant: 44),
            grayView.leadingAnchor.constraint(equalTo: grayViewContainer.leadingAnchor, constant: 16),
            grayView.trailingAnchor.constraint(equalTo: grayViewContainer.trailingAnchor, constant: -16),
            grayView.topAnchor.constraint(equalTo: grayViewContainer.topAnchor, constant: 4),
            grayView.bottomAnchor.constraint(equalTo: grayViewContainer.bottomAnchor)
        ])
        
//        cidadeLabel.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            cidadeLabel.topAnchor.constraint(equalTo: cidadeLabelContainer.topAnchor),
//            cidadeLabel.leadingAnchor.constraint(equalTo: cidadeLabelContainer.leadingAnchor, constant: 32),
//            cidadeLabel.centerYAnchor.constraint(equalTo: grayViewContainer.centerYAnchor)
//        ])
        
        title3Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title3Label.topAnchor.constraint(equalTo: title3LabelContainer.topAnchor, constant: 16),
            title3Label.bottomAnchor.constraint(equalTo: title3LabelContainer.bottomAnchor),
            title3Label.leadingAnchor.constraint(equalTo: title3LabelContainer.leadingAnchor, constant: 24)
        ])
        
        
        stackView2.translatesAutoresizingMaskIntoConstraints = false
               

        roteiroTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roteiroTextField.topAnchor.constraint(equalTo: roteiroTextFieldContainer.topAnchor,constant: 4),
            roteiroTextField.leadingAnchor.constraint(equalTo: roteiroTextFieldContainer.leadingAnchor, constant: 16),
            roteiroTextField.bottomAnchor.constraint(equalTo: roteiroTextFieldContainer.bottomAnchor),
            roteiroTextField.heightAnchor.constraint(equalToConstant: 44),
            roteiroTextField.trailingAnchor.constraint(equalTo: adicionarButton.leadingAnchor, constant: -4)
        ])


        adicionarButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            adicionarButton.trailingAnchor.constraint(equalTo: adicionarButtonContainer.trailingAnchor, constant: -16),
            adicionarButton.heightAnchor.constraint(equalToConstant: 44),
            adicionarButton.bottomAnchor.constraint(equalTo: adicionarButtonContainer.bottomAnchor),
            adicionarButton.topAnchor.constraint(equalTo: adicionarButtonContainer.topAnchor, constant: 4)
        ])
        
        proximoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            proximoButton.centerXAnchor.constraint(equalTo: proximoButtonContainer.centerXAnchor),
            proximoButton.leadingAnchor.constraint(equalTo: proximoButtonContainer.leadingAnchor, constant: 16),
            proximoButton.trailingAnchor.constraint(equalTo: proximoButtonContainer.trailingAnchor, constant: -16),
            proximoButton.bottomAnchor.constraint(equalTo: proximoButtonContainer.bottomAnchor, constant: -128),
            proximoButton.heightAnchor.constraint(equalToConstant: 44)
        ])
        
    }
    
    func setUpAttributes(){
        // MARK: - Configuração dos atributos dos componentes
        class FontKit {

         static func roundedFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> UIFont {
            let systemFont = UIFont.systemFont(ofSize: fontSize, weight: weight)
            let font: UIFont

            if #available(iOS 13.0, *) {
                if let descriptor = systemFont.fontDescriptor.withDesign(.rounded) {
                    font = UIFont(descriptor: descriptor, size: fontSize)
                } else {
                    font = systemFont
                }
            } else {
                font = systemFont
            }

            return font
         }
        }
        
        title1Label.textAlignment = .left
        title1Label.text = "Quais cidades \nvocê quer curtir?"
        title1Label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)

        title1Label.font = FontKit.roundedFont(ofSize: 28, weight: .medium)
        title1Label.lineBreakMode = .byWordWrapping
        title1Label.numberOfLines = 2
        
        title2Label.textAlignment = .left
        title2Label.text = "Primeiro destino"
        title2Label.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
        title2Label.font = FontKit.roundedFont(ofSize: 12, weight: .regular)
        
        grayView.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        grayView.layer.cornerRadius = 12
        
        cidadeLabel.textAlignment = .left
        cidadeLabel.text = "Salvador"
        cidadeLabel.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
        cidadeLabel.font = FontKit.roundedFont(ofSize: 12, weight: .regular)


        title3Label.textAlignment = .left
        title3Label.text = "Segundo destino"
        title3Label.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
        title3Label.font = FontKit.roundedFont(ofSize: 12, weight: .regular)
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        
        stackView2.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        
        
        
        roteiroTextField.placeholder = "Escolha uma cidade ou estado  "
        roteiroTextField.font = FontKit.roundedFont(ofSize: 15, weight: .regular)
        roteiroTextField.backgroundColor = UIColor.white
        roteiroTextField.layer.cornerRadius = 12
        roteiroTextField.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
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
        
        
//        grayViewContainer.backgroundColor = .yellow
//        title1LabelContainer.backgroundColor = .red
//        title2LabelContainer.backgroundColor = .blue
//        roteiroTextFieldContainer.backgroundColor = .green
//        adicionarButtonContainer.backgroundColor = .magenta
//        proximoButtonContainer.backgroundColor = .systemPink
        
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
            ColocarDestinosView().showPreview().previewDevice("iPhone 11").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
