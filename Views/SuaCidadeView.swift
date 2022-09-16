//
//  SuaCidadeView.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 16/09/22.
//

import UIKit

class SuaCidadeView: UIView {
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
        title1Label.text = "Qual cidade você quer conhecer primeiro?"
        title1Label.textColor = .black
        title1Label.font = FontKit.roundedFont(ofSize: 28, weight: .medium)
        title1Label.lineBreakMode = .byWordWrapping
        title1Label.numberOfLines = 2
        
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        
        roteiroTextField.placeholder = "   Ex.: Salvador"
        roteiroTextField.font = FontKit.roundedFont(ofSize: 15, weight: .regular)
        roteiroTextField.backgroundColor = UIColor.white
//        roteiroTextField.borderStyle = .roundedRect
        roteiroTextField.layer.cornerRadius = 12
        roteiroTextField.frame = CGRect(x: 0, y: 0, width: 343, height: 44)
        roteiroTextField.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        
        let icon = UIImage(systemName: "arrow.right")
        proximoButton.setImage(icon, for: .normal)
        proximoButton.imageView?.contentMode = .scaleAspectFit
        proximoButton.setTitle("  Próximo  ", for: .normal)
        proximoButton.setTitleColor(.white, for: .normal)
        proximoButton.tintColor = UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
        proximoButton.layer.cornerCurve = .continuous
        proximoButton.layer.cornerRadius = 22
        proximoButton.clipsToBounds = true
        
//        title1LabelContainer.backgroundColor = .magenta
//        roteiroTextFieldContainer.backgroundColor = .systemPink
//        proximoButtonContainer.backgroundColor = .blue
        
        
   
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
            title1Label.bottomAnchor.constraint(equalTo: title1LabelContainer.bottomAnchor),
            title1Label.topAnchor.constraint(equalTo: title1LabelContainer.topAnchor, constant: 50)
        ])
        
        roteiroTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            roteiroTextField.leadingAnchor.constraint(equalTo: roteiroTextFieldContainer.leadingAnchor, constant: 16),
            roteiroTextField.trailingAnchor.constraint(equalTo: roteiroTextFieldContainer.trailingAnchor, constant: -16),
            roteiroTextField.topAnchor.constraint(equalTo: roteiroTextFieldContainer.topAnchor, constant: 16),
            roteiroTextField.bottomAnchor.constraint(equalTo: roteiroTextFieldContainer.bottomAnchor),
            roteiroTextField.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        proximoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            proximoButton.trailingAnchor.constraint(equalTo: proximoButtonContainer.trailingAnchor, constant: -16),
            proximoButton.heightAnchor.constraint(equalToConstant: 44),
            proximoButton.topAnchor.constraint(equalTo: proximoButtonContainer.topAnchor, constant: 34),
            
        ])
    }

}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct SuaCidadeView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            SuaCidadeView().showPreview().previewDevice("iPhone 11").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
