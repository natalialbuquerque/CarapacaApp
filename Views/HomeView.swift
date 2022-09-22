//
//  HomeView.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 14/09/22.
//

import UIKit

class HomeView: UIView {
    // MARK: - Inicializar os componentes/ as views
    let bgHomeView = UIImageView(image: UIImage(named: "bgHome"))
    let title1Label = UILabel()
    let title2Label = UILabel()
    let criarRoteiroButton = UIButton(configuration: .filled())
    let meusRoteirosLabel = UILabel()
    var meusRoteirosCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    let layout = UICollectionViewFlowLayout()
    
    let bgHomeContainer = UIView()
    let title1Container = UIView()
    let title2Container = UIView()
    let criarRoteiroButtonContainer = UIView()
    let meusRoteirosContainer = UIView()
    let meusRoteirosCollectionViewContainer = UIView()
    
    let stackView = UIStackView()
    
    weak var delegate: HomeViewDelegate?
    

        
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
//            self.addSubview(bgHomeView)
            self.addSubview(stackView)

            stackView.addArrangedSubview(bgHomeContainer)
            stackView.addArrangedSubview(criarRoteiroButtonContainer)
            stackView.addArrangedSubview(meusRoteirosContainer)
            stackView.addArrangedSubview(meusRoteirosCollectionViewContainer)

            
            bgHomeContainer.addSubview(bgHomeView)
            title1Container.addSubview(title1Label)
            title2Container.addSubview(title2Label)
            criarRoteiroButtonContainer.addSubview(criarRoteiroButton)
            meusRoteirosContainer.addSubview(meusRoteirosLabel)
            meusRoteirosCollectionViewContainer.addSubview(meusRoteirosCollectionView)

            
            bgHomeContainer.addSubview(title1Container)
            bgHomeContainer.addSubview(title2Container)
        }
        
        
        
        func setupConstraints(){
            // MARK: - Configuração das constraints de auto layout
            bgHomeView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                bgHomeView.topAnchor.constraint(equalTo: bgHomeContainer.topAnchor),
                bgHomeView.leadingAnchor.constraint(equalTo: bgHomeContainer.leadingAnchor),
                bgHomeView.trailingAnchor.constraint(equalTo: bgHomeContainer.trailingAnchor),
                bgHomeView.bottomAnchor.constraint(equalTo: bgHomeContainer.bottomAnchor)
            ])

            stackView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: self.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
            ])

            title1Label.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                title1Label.leadingAnchor.constraint(equalTo: title1Container.leadingAnchor, constant: 16),
                title1Label.bottomAnchor.constraint(equalTo: bgHomeView.bottomAnchor, constant: -44)
            ])

            title2Label.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                title2Label.leadingAnchor.constraint(equalTo: title2Container.leadingAnchor, constant: 16),
                title2Label.bottomAnchor.constraint(equalTo: bgHomeView.bottomAnchor, constant: -18)
            ])

            criarRoteiroButton.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                criarRoteiroButton.centerXAnchor.constraint(equalTo: criarRoteiroButtonContainer.centerXAnchor),
                criarRoteiroButton.trailingAnchor.constraint(equalTo: criarRoteiroButtonContainer.trailingAnchor, constant: -16),
                criarRoteiroButton.leadingAnchor.constraint(equalTo: criarRoteiroButtonContainer.leadingAnchor, constant: 16),
                criarRoteiroButton.topAnchor.constraint(equalTo: criarRoteiroButtonContainer.topAnchor, constant: 22),
                criarRoteiroButton.bottomAnchor.constraint(equalTo: criarRoteiroButtonContainer.bottomAnchor, constant: -24),
                criarRoteiroButton.heightAnchor.constraint(equalToConstant: 64)
            ])

            meusRoteirosLabel.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                meusRoteirosLabel.leadingAnchor.constraint(equalTo: meusRoteirosContainer.leadingAnchor, constant: 16),
                meusRoteirosLabel.topAnchor.constraint(equalTo: meusRoteirosContainer.topAnchor),
                meusRoteirosLabel.bottomAnchor.constraint(equalTo: meusRoteirosContainer.bottomAnchor, constant: -16)
            ])

            meusRoteirosCollectionView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                meusRoteirosCollectionView.centerYAnchor.constraint(equalTo: meusRoteirosCollectionViewContainer.centerYAnchor),
                meusRoteirosCollectionView.centerXAnchor.constraint(equalTo: meusRoteirosCollectionViewContainer.centerXAnchor),
                meusRoteirosCollectionView.topAnchor.constraint(equalTo: meusRoteirosCollectionViewContainer.topAnchor),
                meusRoteirosCollectionView.leadingAnchor.constraint(equalTo: meusRoteirosCollectionViewContainer.leadingAnchor, constant:  16),
                meusRoteirosCollectionView.trailingAnchor.constraint(equalTo: meusRoteirosCollectionViewContainer.trailingAnchor, constant: -16)
            ])
        }
        
        
        
        func setUpAttributes(){
            // MARK: - Configuração dos atributos dos componentes
            bgHomeView.contentMode = .scaleAspectFill
            bgHomeView.layer.cornerRadius = 16
            bgHomeView.clipsToBounds = true
            bgHomeView.layer.cornerCurve = .continuous
            
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
            title1Label.text = "Olá, Mochileiro!"
            title1Label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
            title1Label.font = FontKit.roundedFont(ofSize: 28, weight: .medium)
            
            title2Label.textAlignment = .left
            title2Label.text = "Crie as melhores viagens de forma simples"
            title2Label.textColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
            title2Label.font = FontKit.roundedFont(ofSize: 15, weight: .regular)
            
            criarRoteiroButton.setTitle("   Criar novo roteiro!", for: .normal)
            criarRoteiroButton.setTitleColor(.white, for: .normal)
            criarRoteiroButton.tintColor =  UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
            criarRoteiroButton.titleLabel?.font = FontKit.roundedFont(ofSize: 17, weight: .semibold)
            
            criarRoteiroButton.layer.cornerCurve = .continuous
            criarRoteiroButton.layer.cornerRadius = 64 / 2
//            criarRoteiroButton.layer.cornerRadius = 35
            criarRoteiroButton.clipsToBounds = true
            let icon = UIImage(systemName: "plus.circle")
            icon?.withTintColor(UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00))
                        criarRoteiroButton.setImage(icon, for: .normal)
                        criarRoteiroButton.imageView?.contentMode = .scaleAspectFit
            
            
            meusRoteirosLabel.textAlignment = .left
            meusRoteirosLabel.text = "Meus Roteiros"
            meusRoteirosLabel.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)

            meusRoteirosLabel.font = FontKit.roundedFont(ofSize: 20, weight: .semibold)
            
            
            stackView.axis = .vertical
            stackView.alignment = .fill
            stackView.distribution = .fill
            stackView.spacing = 0
            
            layout.scrollDirection = .vertical
            layout.minimumLineSpacing = 20
            layout.minimumInteritemSpacing = 10
            layout.itemSize = CGSize(width: 164, height: 140)
            meusRoteirosCollectionView.collectionViewLayout = layout
            meusRoteirosCollectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
//            meusRoteirosCollectionView.frame = self.bounds
            
        }

    
}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            HomeView().showPreview().previewDevice("iPhone SE (2nd generation)").previewInterfaceOrientation(.portrait)
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
