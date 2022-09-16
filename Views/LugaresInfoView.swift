//
//  LugaresInforView.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 13/09/22.
//

import UIKit

class LugaresInfoView: UIView {
    // MARK: - Inicializar os componentes/ as views
    let bgImageView = UIImageView(image: UIImage(named:"pet"))
    let title1Label = UILabel()
    let coracao = UIImageView(image: UIImage(named:"heart"))
    let grayView = UIView()
    let ofereceLabel = UILabel()
    let circleView = UIView()
    let circleImage = UIImageView()
    let enderecoLabel = UILabel()
    let enderecoDetalhesLabel = UILabel()
    let telefoneLabel = UILabel()
    let telefoneDetalhesLabel = UILabel()
    let fotosLabel = UILabel()
    let fotosTableView = UITableView()
    let adicionarAoRoteiroButton = UIButton(configuration: .filled())
    
    
    
    let bgImageContainer = UIView()
    let title1Container = UIView()
    let coracaoContainer = UIView()
    let grayViewContainer = UIView()
    let ofereceLabelContainer = UIView()
    let circleViewContainer = UIView()
    let circleImageContainer = UIView()
    let enderecoLabelContainer = UIView()
    let enderecoDetalhesLabelContainer = UIView()
    let telefoneLabelContainer = UIView()
    let telefoneDetalhesLabelContainer = UIView()
    let fotosLabelContainer = UIView()
    let fotosTableViewContainer = UIView()
    let adicionarAoRoteiroButtonContainer = UIView()
    
    
    let stackView = UIStackView()
    let stackView2 = UIStackView()
    
//    weak var delegate: HomeViewDelegate?

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
            
            stackView.addArrangedSubview(bgImageContainer)
            stackView.addArrangedSubview(grayViewContainer)
            stackView.addArrangedSubview(enderecoLabelContainer)
            stackView.addArrangedSubview(enderecoDetalhesLabelContainer)
            stackView.addArrangedSubview(telefoneLabelContainer)
            stackView.addArrangedSubview(telefoneDetalhesLabelContainer)
            stackView.addArrangedSubview(fotosLabelContainer)
            stackView.addArrangedSubview(fotosTableViewContainer)
            stackView.addArrangedSubview(adicionarAoRoteiroButtonContainer)
    
    
            
            bgImageContainer.addSubview(bgImageView)
            title1Container.addSubview(title1Label)
            coracaoContainer.addSubview(coracao)
            grayViewContainer.addSubview(grayView)
            ofereceLabelContainer.addSubview(ofereceLabel)
            circleViewContainer.addSubview(circleView)
            circleImageContainer.addSubview(circleImage)
            enderecoLabelContainer.addSubview(enderecoLabel)
            enderecoDetalhesLabelContainer.addSubview(enderecoDetalhesLabel)
            telefoneLabelContainer.addSubview(telefoneLabel)
            telefoneDetalhesLabelContainer.addSubview(telefoneDetalhesLabel)
            fotosLabelContainer.addSubview(fotosLabel)
            fotosTableViewContainer.addSubview(fotosTableView)
            adicionarAoRoteiroButtonContainer.addSubview(adicionarAoRoteiroButton)
            
            
            bgImageContainer.addSubview(stackView2)
            stackView2.addSubview(title1Container)
            stackView2.addSubview(coracaoContainer)
            
            grayViewContainer.addSubview(ofereceLabelContainer)
            grayViewContainer.addSubview(circleViewContainer)
            circleViewContainer.addSubview(circleImageContainer)
        }
        
        
        
        func setupConstraints(){
            // MARK: - Configuração das constraints de auto layout
            bgImageView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                bgImageView.topAnchor.constraint(equalTo: bgImageContainer.topAnchor),
                bgImageView.leadingAnchor.constraint(equalTo: bgImageContainer.leadingAnchor),
                bgImageView.trailingAnchor.constraint(equalTo: bgImageContainer.trailingAnchor),
                bgImageView.bottomAnchor.constraint(equalTo: bgImageContainer.bottomAnchor)
            ])
            
            stackView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: self.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
            ])
            
            stackView2.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
    
            ])
            
            title1Label.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                title1Label.leadingAnchor.constraint(equalTo: title1Container.leadingAnchor, constant: 16),
                title1Label.bottomAnchor.constraint(equalTo: bgImageView.bottomAnchor, constant: -20),
    
            ])
            
            coracao.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
//                coracao.leadingAnchor.constraint(equalTo: coracaoContainer.leadingAnchor),
                coracao.trailingAnchor.constraint(equalTo: coracaoContainer.trailingAnchor, constant: -16),
//                coracao.bottomAnchor.constraint(equalTo: bgImageView.bottomAnchor, constant: -20)
                
            ])
            coracaoContainer.backgroundColor = .orange
            
            
            grayView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                grayView.centerXAnchor.constraint(equalTo: grayViewContainer.centerXAnchor),
                grayView.centerYAnchor.constraint(equalTo: grayViewContainer.centerYAnchor),
                grayView.topAnchor.constraint(equalTo: grayViewContainer.topAnchor, constant: 16),
                grayView.leadingAnchor.constraint(equalTo: grayViewContainer.leadingAnchor,constant: 16),
                grayView.trailingAnchor.constraint(equalTo: grayViewContainer.trailingAnchor, constant: -16),
                grayView.heightAnchor.constraint(equalToConstant: 72)
            ])
            
            ofereceLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                ofereceLabel.leadingAnchor.constraint(equalTo: ofereceLabelContainer.leadingAnchor,constant: 32),
                ofereceLabel.topAnchor.constraint(equalTo: ofereceLabelContainer.topAnchor),
                ofereceLabel.centerYAnchor.constraint(equalTo: grayViewContainer.centerYAnchor),
            ])
            
            circleView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                circleView.heightAnchor.constraint(equalToConstant: 40),
                circleView.widthAnchor.constraint(equalToConstant: 40),
                circleView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -16),
                circleView.centerYAnchor.constraint(equalTo: grayView.centerYAnchor),
            ])
            
            circleImage.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                circleImage.centerYAnchor.constraint(equalTo: circleView.centerYAnchor),
                circleImage.centerXAnchor.constraint(equalTo: circleView.centerXAnchor)
            ])
            
            enderecoLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                enderecoLabel.leadingAnchor.constraint(equalTo: enderecoLabelContainer.leadingAnchor, constant: 16),
                enderecoLabel.topAnchor.constraint(equalTo: enderecoLabelContainer.topAnchor),
                enderecoLabel.bottomAnchor.constraint(equalTo: enderecoLabelContainer.bottomAnchor,constant: -8)
            ])
            
            enderecoDetalhesLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                enderecoDetalhesLabel.trailingAnchor.constraint(equalTo: enderecoDetalhesLabelContainer.trailingAnchor, constant: -16),
                enderecoDetalhesLabel.leadingAnchor.constraint(equalTo: enderecoDetalhesLabelContainer.leadingAnchor, constant: 16),
                enderecoDetalhesLabel.topAnchor.constraint(equalTo: enderecoDetalhesLabelContainer.topAnchor),
                enderecoDetalhesLabel.bottomAnchor.constraint(equalTo: enderecoDetalhesLabelContainer.bottomAnchor, constant: -24)
            ])
            
        
            telefoneLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                telefoneLabel.trailingAnchor.constraint(equalTo: telefoneLabelContainer.trailingAnchor, constant: -16),
                telefoneLabel.leadingAnchor.constraint(equalTo: telefoneLabelContainer.leadingAnchor, constant: 16),
                telefoneLabel.topAnchor.constraint(equalTo: telefoneLabelContainer.topAnchor),
                telefoneLabel.bottomAnchor.constraint(equalTo: telefoneLabelContainer.bottomAnchor, constant: -8)
            ])


            telefoneDetalhesLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                telefoneDetalhesLabel.trailingAnchor.constraint(equalTo: telefoneDetalhesLabelContainer.trailingAnchor, constant: -16),
                telefoneDetalhesLabel.leadingAnchor.constraint(equalTo: telefoneDetalhesLabelContainer.leadingAnchor, constant: 16),
                telefoneDetalhesLabel.topAnchor.constraint(equalTo: telefoneDetalhesLabelContainer.topAnchor),
                telefoneDetalhesLabel.bottomAnchor.constraint(equalTo: telefoneDetalhesLabelContainer.bottomAnchor, constant: -24)
            ])

            fotosLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                fotosLabel.trailingAnchor.constraint(equalTo: fotosLabelContainer.trailingAnchor, constant: -16),
                fotosLabel.leadingAnchor.constraint(equalTo: fotosLabelContainer.leadingAnchor, constant: 16),
                fotosLabel.topAnchor.constraint(equalTo: fotosLabelContainer.topAnchor),
                fotosLabel.bottomAnchor.constraint(equalTo: fotosLabelContainer.bottomAnchor, constant: -9)
            ])
//
//            fotosTableView.translatesAutoresizingMaskIntoConstraints = false
//            NSLayoutConstraint.activate([
//                fotosTableView.trailingAnchor.constraint(equalTo: fotosTableViewContainer.trailingAnchor, constant: -16),
//                fotosTableView.leadingAnchor.constraint(equalTo: fotosTableViewContainer.leadingAnchor, constant: 16),
//                fotosTableView.topAnchor.constraint(equalTo: fotosTableViewContainer.topAnchor),
//                fotosTableView.bottomAnchor.constraint(equalTo: fotosTableViewContainer.bottomAnchor)
//            ])

            adicionarAoRoteiroButton.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                adicionarAoRoteiroButton.trailingAnchor.constraint(equalTo: adicionarAoRoteiroButtonContainer.trailingAnchor, constant: -16),
                adicionarAoRoteiroButton.leadingAnchor.constraint(equalTo: adicionarAoRoteiroButtonContainer.leadingAnchor, constant: 16),
                adicionarAoRoteiroButton.topAnchor.constraint(equalTo: adicionarAoRoteiroButtonContainer.topAnchor, constant: 179),
                adicionarAoRoteiroButton.bottomAnchor.constraint(equalTo: adicionarAoRoteiroButtonContainer.bottomAnchor, constant: -16),
                adicionarAoRoteiroButton.heightAnchor.constraint(equalToConstant: 48)
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
            bgImageView.contentMode = .scaleAspectFill
            bgImageView.layer.cornerRadius = 16
            bgImageView.clipsToBounds = true
            bgImageView.layer.cornerCurve = .continuous
            
            
            title1Label.textAlignment = .left
            title1Label.text = "Pet Lovers"
            title1Label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
            title1Label.font = FontKit.roundedFont(ofSize: 28, weight: .medium)
            
            grayView.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
            grayView.layer.cornerRadius = 16
            
            ofereceLabel.textAlignment = .left
            ofereceLabel.text = "Estabelecimento que \noferece trabalho"
            ofereceLabel.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
            ofereceLabel.numberOfLines = 2
            ofereceLabel.font = FontKit.roundedFont(ofSize: 15, weight: .semibold)
            
            circleView.layer.cornerRadius = 20
            circleView.clipsToBounds = true
            circleView.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
            circleView.layer.borderWidth = 0.0
            
            
            circleImage.image = UIImage(systemName: "bag.fill")
            circleImage.contentMode = .scaleAspectFit
            circleImage.clipsToBounds = true
            
            enderecoLabel.textAlignment = .left
            enderecoLabel.text = "Endereço"
            enderecoLabel.font = FontKit.roundedFont(ofSize: 17, weight: .semibold)
            enderecoLabel.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
            
            enderecoDetalhesLabel.textAlignment = .left
            enderecoDetalhesLabel.text = "Av. Min. Marcos Freire, 1815 - Bairro Novo"
            enderecoDetalhesLabel.font = FontKit.roundedFont(ofSize: 15, weight: .regular)
            enderecoDetalhesLabel.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
            
            telefoneLabel.textAlignment = .left
            telefoneLabel.text = "Telefone"
            telefoneLabel.font = FontKit.roundedFont(ofSize: 17, weight: .semibold)
            telefoneLabel.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
            
            telefoneDetalhesLabel.textAlignment = .left
            telefoneDetalhesLabel.text = "81 00000-0000"
            telefoneDetalhesLabel.font = FontKit.roundedFont(ofSize: 15, weight: .regular)
            telefoneDetalhesLabel.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
            
            fotosLabel.textAlignment = .left
            fotosLabel.text = "Fotos"
            fotosLabel.font = FontKit.roundedFont(ofSize: 17, weight: .semibold)
            fotosLabel.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
            
            adicionarAoRoteiroButton.setTitle("Adicionar ao roteiro", for: .normal)
            adicionarAoRoteiroButton.setTitleColor(.white, for: .normal)
            adicionarAoRoteiroButton.tintColor =  UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
            adicionarAoRoteiroButton.layer.cornerCurve = .continuous
            adicionarAoRoteiroButton.layer.cornerRadius = 48 / 2
            adicionarAoRoteiroButton.clipsToBounds = true
            
//
//            stackView.backgroundColor = .systemRed
//            grayViewContainer.backgroundColor = .orange
//            circleViewContainer.backgroundColor = .black
//            ofereceLabelContainer.backgroundColor = .purple
//            enderecoLabelContainer.backgroundColor = .systemPink
//            enderecoDetalhesLabelContainer.backgroundColor = .gray
//            telefoneLabelContainer.backgroundColor = .red
//            telefoneDetalhesLabelContainer.backgroundColor = .gray
//            fotosLabelContainer.backgroundColor = .orange
//            fotosTableViewContainer.backgroundColor = .green
//            adicionarAoRoteiroButtonContainer.backgroundColor = .purple
            
//            meusRoteirosLabel.textAlignment = .left
//            meusRoteirosLabel.text = "Meus Roteiros"
//            meusRoteirosLabel.textColor = .black
//            meusRoteirosLabel.font = UIFont.boldSystemFont(ofSize: 22)
            
            
            stackView.axis = .vertical
            stackView.alignment = .fill
            stackView.distribution = .fill
            stackView.spacing = 0
            
            stackView2.axis = .horizontal
            stackView2.alignment = .fill
            stackView2.distribution = .fill
            stackView2.spacing = 0
        }
}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct LugaresInforView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            LugaresInfoView().showPreview().previewDevice("iPhone 11").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
