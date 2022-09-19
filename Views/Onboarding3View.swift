//
//  Onboarding3View.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 16/09/22.
//

import UIKit

class Onboarding3View: UIView {
    // MARK: - Inicializar os componentes/ as views
    
    let pularButton = UIButton(configuration: .borderless())
    let image = UIImageView(image: UIImage(named: "onboarding3"))
    let titleLabel = UILabel()
    let textLabel = UILabel()
    let linha = UIView()
    let circulo = UIView()
    let aviao = UIImageView()
    let entrarButton = UIButton(configuration: .filled())
    
    let pularButtonContainer = UIView()
    let imageContainer = UIView()
    let titleLabelContainer = UIView()
    let textLabelContainer = UIView()
    let linhaContainer = UIView()
    let circuloContainer = UIView()
    let aviaoContainer = UIView()
    let entrarButtonContainer = UIView()
    
    let stackView = UIStackView()
    let stackView2 = UIStackView()
    
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
        self.addSubview(stackView)
        
        stackView.addArrangedSubview(pularButtonContainer)
        stackView.addArrangedSubview(imageContainer)
        stackView.addArrangedSubview(titleLabelContainer)
        stackView.addArrangedSubview(textLabelContainer)
        stackView.addArrangedSubview(stackView2)
        
        stackView2.addArrangedSubview(linhaContainer)
        stackView2.addArrangedSubview(circuloContainer)
        stackView2.addArrangedSubview(aviaoContainer)
        stackView2.addArrangedSubview(entrarButtonContainer)
        
        pularButtonContainer.addSubview(pularButton)
        imageContainer.addSubview(image)
        titleLabelContainer.addSubview(titleLabel)
        textLabelContainer.addSubview(textLabel)
        linhaContainer.addSubview(linha)
        circuloContainer.addSubview(circulo)
        aviaoContainer.addSubview(aviao)
        entrarButtonContainer.addSubview(entrarButton)
    }
    
    func setupConstraints(){
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        pularButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pularButton.topAnchor.constraint(equalTo: pularButtonContainer.topAnchor),
            pularButton.bottomAnchor.constraint(equalTo: pularButtonContainer.bottomAnchor),
            pularButton.trailingAnchor.constraint(equalTo: pularButtonContainer.trailingAnchor, constant: -16),
        ])
        
        image.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: imageContainer.topAnchor, constant: 18),
            image.bottomAnchor.constraint(equalTo: imageContainer.bottomAnchor),
            image.trailingAnchor.constraint(equalTo: imageContainer.trailingAnchor, constant: -32),
            image.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor, constant: 32),
            image.widthAnchor.constraint(equalToConstant: 311),
            image.heightAnchor.constraint(equalToConstant: 304),
        ])
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: titleLabelContainer.topAnchor, constant: 18),
            titleLabel.bottomAnchor.constraint(equalTo: titleLabelContainer.bottomAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: titleLabelContainer.centerXAnchor)
        ])
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: textLabelContainer.topAnchor, constant: 18),
            textLabel.bottomAnchor.constraint(equalTo: textLabelContainer.bottomAnchor),
            textLabel.centerXAnchor.constraint(equalTo: textLabelContainer.centerXAnchor)
        ])
        
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        ])
        
        linha.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            linha.bottomAnchor.constraint(equalTo: linhaContainer.bottomAnchor, constant: -85),
            linha.leadingAnchor.constraint(equalTo: linhaContainer.leadingAnchor,constant: 16),
            linha.heightAnchor.constraint(equalToConstant: 8),
            linha.widthAnchor.constraint(equalToConstant: 175),
            
        ])
        
        circulo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            circulo.heightAnchor.constraint(equalToConstant: 8),
            circulo.widthAnchor.constraint(equalToConstant: 8),
            circulo.leadingAnchor.constraint(equalTo: linha.trailingAnchor, constant: 4),
            circulo.bottomAnchor.constraint(equalTo: circuloContainer.bottomAnchor, constant: -85),
        ])
        
        aviao.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            aviao.bottomAnchor.constraint(equalTo: aviaoContainer.bottomAnchor, constant: -80),
            aviao.leadingAnchor.constraint(equalTo: circulo.trailingAnchor, constant: 4)
        ])
        
        entrarButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            entrarButton.heightAnchor.constraint(equalToConstant: 44),
            entrarButton.widthAnchor.constraint(equalToConstant: 125),
            entrarButton.bottomAnchor.constraint(equalTo: entrarButtonContainer.bottomAnchor, constant: -70),
            entrarButton.trailingAnchor.constraint(equalTo: entrarButtonContainer.trailingAnchor, constant: -16)
            
        ])
        
        
    }
    
    func setUpAttributes(){
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
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        
        pularButton.setTitle("Pular", for: .normal)
        pularButton.setTitleColor(UIColor(red: 0.72, green: 0.72, blue: 0.72, alpha: 1.00), for: .normal)
        pularButton.titleLabel?.font = FontKit.roundedFont(ofSize: 17, weight: .medium)
        
        titleLabel.textAlignment = .left
        titleLabel.text = "Explore o mundo"
        titleLabel.textColor = UIColor(red: 0.05, green: 0.38, blue: 0.68, alpha: 1.00)

        titleLabel.font = FontKit.roundedFont(ofSize: 22, weight: .semibold)
        
        
        textLabel.textAlignment = .left
        textLabel.text = "Obtenha informações relevantes \npara facilitar a sua aventura"
        textLabel.textColor = .black
        textLabel.numberOfLines = 2
        textLabel.textAlignment = .center
        textLabel.font = FontKit.roundedFont(ofSize: 17, weight: .regular)
        
        stackView2.axis = .horizontal
        stackView2.alignment = .fill
        stackView2.distribution = .fill
        stackView2.spacing = 0
        
        linha.backgroundColor = UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
        linha.layer.cornerRadius = 8 / 2
        
        circulo.backgroundColor = UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
        circulo.layer.cornerRadius = 8 / 2
        
        aviao.image = UIImage(systemName: "airplane")
        
        entrarButton.setTitle("  Entrar  ", for: .normal)
        entrarButton.setTitleColor(.white, for: .normal)
        entrarButton.tintColor = UIColor(red: 0.05, green: 0.38, blue: 0.68, alpha: 1.00)
        entrarButton.layer.cornerCurve = .continuous
        entrarButton.layer.cornerRadius = 44 / 2
        entrarButton.clipsToBounds = true
        
//        pularButton.backgroundColor = .orange
//        imageContainer.backgroundColor = .blue
//        titleLabelContainer.backgroundColor = .systemPink
//        textLabelContainer.backgroundColor = .red
//        linha.backgroundColor = .yellow
//        stackView2.backgroundColor = .green
        entrarButton.backgroundColor = .gray
        
        
        
        
        
    }


}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct Onboarding3View_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            Onboarding3View().showPreview().previewDevice("iPhone SE (2nd generation)").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif

