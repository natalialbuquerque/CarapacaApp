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
    let roteiroTextField1 = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
    
    let title3Label = UILabel()
    let roteiroTextField2 = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
    let adicionarButton1 = UIButton(configuration: .filled())
    
    let title4Label = UILabel()
    let roteiroTextField3 = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
    let adicionarButton2 = UIButton(configuration: .filled())
    
    let proximoButton = UIButton(configuration: .filled())
    
    
    
    
    let title1LabelContainer = UIView()
    let title2LabelContainer = UIView()
    let roteiroTextField1Container = UIView()
    
    
    let title3LabelContainer = UIView()
    
    let title4LabelContainer = UIView()
    
    let proximoButtonContainer2 = UIView()
    
    let stackView = UIStackView()
    let stackView2 = UIStackView()
    let stackView3 = UIStackView()
    
    let stackView2Container = UIView()
    let stackView3Container = UIView()
  
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
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
        stackView.addArrangedSubview(roteiroTextField1Container)
        
        
        stackView.addArrangedSubview(title3LabelContainer)
        stackView.addArrangedSubview(stackView2Container)
        
        stackView2.addArrangedSubview(roteiroTextField2)
        stackView2.addArrangedSubview(adicionarButton1)
        
        stackView.addArrangedSubview(title4LabelContainer)
        stackView.addArrangedSubview(stackView3Container)
        stackView3.addArrangedSubview(roteiroTextField3)
        stackView3.addArrangedSubview(adicionarButton2)
   
        
    
        stackView.addArrangedSubview(proximoButtonContainer2)
        
        
    
        title1LabelContainer.addSubview(title1Label)
        title2LabelContainer.addSubview(title2Label)
        roteiroTextField1Container.addSubview(roteiroTextField1)
        title3LabelContainer.addSubview(title3Label)
        stackView2Container.addSubview(stackView2)
//        roteiroTextField2Container.addSubview(roteiroTextField2)
//        adicionarButton1Container.addSubview(adicionarButton1)
        title4LabelContainer.addSubview(title4Label)
        stackView3Container.addSubview(stackView3)
//        roteiroTextField3Container.addSubview(roteiroTextField3)
//        adicionarButton2Container.addSubview(adicionarButton2)
        proximoButtonContainer2.addSubview(proximoButton)
        
        

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

        roteiroTextField1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roteiroTextField1.heightAnchor.constraint(equalToConstant: 44),
            roteiroTextField1.leadingAnchor.constraint(equalTo: roteiroTextField1Container.leadingAnchor, constant: 16),
            roteiroTextField1.trailingAnchor.constraint(equalTo: roteiroTextField1Container.trailingAnchor, constant: -16),
            roteiroTextField1.topAnchor.constraint(equalTo: roteiroTextField1Container.topAnchor, constant: 4),
            roteiroTextField1.bottomAnchor.constraint(equalTo: roteiroTextField1Container.bottomAnchor)
        ])


        title3Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title3Label.topAnchor.constraint(equalTo: title3LabelContainer.topAnchor, constant: 16),
            title3Label.bottomAnchor.constraint(equalTo: title3LabelContainer.bottomAnchor),
            title3Label.leadingAnchor.constraint(equalTo: title3LabelContainer.leadingAnchor, constant: 24)
        ])


        stackView2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView2.trailingAnchor.constraint(equalTo: stackView2Container.trailingAnchor, constant: -16),
            stackView2.leadingAnchor.constraint(equalTo: stackView2Container.leadingAnchor, constant: 16),
            stackView2.topAnchor.constraint(equalTo: stackView2Container.topAnchor),
            stackView2.bottomAnchor.constraint(equalTo: stackView2Container.bottomAnchor)
        ])


        roteiroTextField2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roteiroTextField2.heightAnchor.constraint(equalToConstant: 44),
        ])

        adicionarButton1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            adicionarButton1.heightAnchor.constraint(equalToConstant: 44),
            adicionarButton1.widthAnchor.constraint(equalToConstant: 96),
        ])

        stackView3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView3.trailingAnchor.constraint(equalTo: stackView3Container.trailingAnchor, constant: -16),
            stackView3.leadingAnchor.constraint(equalTo: stackView3Container.leadingAnchor, constant: 16),
            stackView3.topAnchor.constraint(equalTo: stackView3Container.topAnchor),
            stackView3.bottomAnchor.constraint(equalTo: stackView3Container.bottomAnchor)
        ])

        title4Label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title4Label.topAnchor.constraint(equalTo: title4LabelContainer.topAnchor, constant: 16),
            title4Label.bottomAnchor.constraint(equalTo: title4LabelContainer.bottomAnchor),
            title4Label.leadingAnchor.constraint(equalTo: title4LabelContainer.leadingAnchor, constant: 24)
        ])
        roteiroTextField3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roteiroTextField3.heightAnchor.constraint(equalToConstant: 44),
        ])
        
        adicionarButton2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            adicionarButton2.heightAnchor.constraint(equalToConstant: 44),
            adicionarButton2.widthAnchor.constraint(equalToConstant: 96),
        ])

        
        proximoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            proximoButton.centerXAnchor.constraint(equalTo: proximoButtonContainer2.centerXAnchor),
            proximoButton.leadingAnchor.constraint(equalTo: proximoButtonContainer2.leadingAnchor, constant: 16),
            proximoButton.trailingAnchor.constraint(equalTo: proximoButtonContainer2.trailingAnchor, constant: -16),
            proximoButton.bottomAnchor.constraint(equalTo: proximoButtonContainer2.bottomAnchor, constant: -128),
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
        
//        roteiroTextField1.placeholder = "João Pessoa"
        roteiroTextField1.text = "João Pessoa"
        
        roteiroTextField1.font = FontKit.roundedFont(ofSize: 15, weight: .regular)
        roteiroTextField1.backgroundColor = UIColor.white
        roteiroTextField1.layer.cornerRadius = 12
        roteiroTextField1.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
//        let searchIcon = UIImageView.init(frame: CGRect.init(x: 10, y: 10, width: 20, height: 20))
//            searchIcon.image = UIImage.init(systemName: "magnifyingglass")
//            searchIcon.tintColor = .black
//        let leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 40, height: 40))
//            leftView.backgroundColor = .clear
//            leftView.addSubview(searchIcon)
//            roteiroTextField1.leftView = leftView
//            roteiroTextField1.leftViewMode = .always



        title3Label.textAlignment = .left
        title3Label.text = "Segundo destino"
        title3Label.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
        title3Label.font = FontKit.roundedFont(ofSize: 12, weight: .regular)
        
        title4Label.textAlignment = .left
        title4Label.text = "Terceiro destino"
        title4Label.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
        title4Label.font = FontKit.roundedFont(ofSize: 12, weight: .regular)
        title4Label.isHidden = true
        
        roteiroTextField3.placeholder = "    Escolha uma cidade  "
        roteiroTextField3.font = FontKit.roundedFont(ofSize: 15, weight: .regular)
        roteiroTextField3.backgroundColor = UIColor.white
        roteiroTextField3.layer.cornerRadius = 12
        roteiroTextField3.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        roteiroTextField3.isHidden = true
        
        adicionarButton2.setTitle("Adicionar", for: .normal)
        adicionarButton2.setTitleColor(.white, for: .normal)
        adicionarButton2.tintColor = .systemBlue
        adicionarButton2.layer.cornerCurve = .continuous
        adicionarButton2.layer.cornerRadius = 12
        adicionarButton2.clipsToBounds = true
        adicionarButton2.tintColor =  UIColor(red: 0.05, green: 0.38, blue: 0.68, alpha: 1.00)
        adicionarButton2.isHidden = true
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        
        stackView2.axis = .horizontal
        stackView2.alignment = .fill
        stackView2.distribution = .fill
        stackView2.spacing = 4
        
        stackView3.axis = .horizontal
        stackView3.alignment = .fill
        stackView3.distribution = .fill
        stackView3.spacing = 4
        
        
        roteiroTextField2.placeholder = "    Escolha uma cidade  "
        roteiroTextField2.font = FontKit.roundedFont(ofSize: 15, weight: .regular)
        roteiroTextField2.backgroundColor = UIColor.white
        roteiroTextField2.layer.cornerRadius = 12
        roteiroTextField2.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
//        let searchIcon = UIImageView.init(frame: CGRect.init(x: 10, y: 10, width: 20, height: 20))
//            searchIcon.image = UIImage.init(systemName: "magnifyingglass")
//            searchIcon.tintColor = .black
//        let leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 40, height: 40))
//            leftView.backgroundColor = .clear
//            leftView.addSubview(searchIcon)
//            roteiroTextField2.leftView = leftView
//            roteiroTextField2.leftViewMode = .always
        
        
        
        adicionarButton1.setTitle("Adicionar", for: .normal)
        adicionarButton1.setTitleColor(.white, for: .normal)
        adicionarButton1.tintColor = .systemBlue
        adicionarButton1.layer.cornerCurve = .continuous
        adicionarButton1.layer.cornerRadius = 12
        adicionarButton1.clipsToBounds = true
        adicionarButton1.tintColor =  UIColor(red: 0.05, green: 0.38, blue: 0.68, alpha: 1.00)


        proximoButton.setTitle("  Próximo  ", for: .normal)
        proximoButton.setTitleColor(.white, for: .normal)
        proximoButton.tintColor = .systemGreen
        proximoButton.layer.cornerCurve = .continuous
        proximoButton.layer.cornerRadius = 44 / 2
        proximoButton.clipsToBounds = true
        proximoButton.tintColor =  UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
        
        
        
        self.clipsToBounds = true
        
    

        
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
