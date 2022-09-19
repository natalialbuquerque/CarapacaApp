//
//  ExplorarLocalViewController.swift
//  Carapaca App rascunho
//
//  Created by mcor on 17/09/22.
//

import UIKit

class ExplorarLocalViewController: UIViewController {
    
    let exploreLocalView = ExploreLocalView()
    let scrollView =  UIScrollView()
    let contentView = UIView()
    let exploreLocalBotaoView = ExploreLocalBotaoView()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 20
        return stackView
    }()
    
    let stackViewTitle1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 0
        return stackView
    }()
    
    let title3Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Para conhecer pessoas"
        label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let verMais1Button: UIButton = {
        let verMais = UIButton()
        verMais.setTitle("Ver Mais", for: .normal)
        verMais.setTitleColor(UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00), for: .normal)
        verMais.clipsToBounds = true
        return verMais
    }()
    
    
    let pessoasCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 157, height: 136)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(PessoasCollectionViewCell.self, forCellWithReuseIdentifier: PessoasCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let stackViewTitle2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 0
        return stackView
    }()
    
    let title4Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Para fazer renda extra"
        label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let verMais2Button: UIButton = {
        let verMais = UIButton()
        verMais.setTitle("Ver Mais", for: .normal)
        verMais.setTitleColor(UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00), for: .normal)
        verMais.clipsToBounds = true
        return verMais
    }()
    
    let rendaCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 157, height: 136)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(RendaCollectionViewCell.self, forCellWithReuseIdentifier: RendaCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
        
    }()
    
    let stackViewTitle3: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 0
        return stackView
    }()
    
    let title5Label: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Para fazer renda extra"
        label.textColor = UIColor(red: 0.02, green: 0.13, blue: 0.22, alpha: 1.00)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let verMais3Button: UIButton = {
        let verMais = UIButton()
        verMais.setTitle("Ver Mais", for: .normal)
        verMais.setTitleColor(UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00), for: .normal)
        verMais.clipsToBounds = true
        return verMais
    }()
    
    let descansarCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 157, height: 136)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(DescansarCollectionViewCell.self, forCellWithReuseIdentifier: DescansarCollectionViewCell.identifier)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
        
    }()
    
   
    weak var delegate: DelegateExplorar?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.navigationItem.title = "Nome do Roteiro"
//        navigationController?.title = "Nome do Roteiro"
//        navigationItem.backBarButtonItem?.image = .checkmark
//        navigationItem.title = "Nome do Roteiro"
        
        setupHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
        
        pessoasCollectionView.delegate = self
        pessoasCollectionView.dataSource = self
        
        rendaCollectionView.delegate = self
        rendaCollectionView.dataSource = self
        
        descansarCollectionView.delegate = self
        descansarCollectionView.dataSource = self

        
    }
    
    func setupHierarchy() {
        
        view.addSubview(exploreLocalView)
        view.addSubview(scrollView)
        view.addSubview(exploreLocalBotaoView)
        
        scrollView.addSubview(contentView)
        
        contentView.addSubview(stackView)
        
        stackView.addArrangedSubview(stackViewTitle1)
        stackView.addArrangedSubview(pessoasCollectionView)
        stackView.addArrangedSubview(stackViewTitle2)
        stackView.addArrangedSubview(rendaCollectionView)
        stackView.addArrangedSubview(stackViewTitle3)
        stackView.addArrangedSubview(descansarCollectionView)
        
        stackViewTitle1.addArrangedSubview(title3Label)
        stackViewTitle1.addArrangedSubview(verMais1Button)
        
        stackViewTitle2.addArrangedSubview(title4Label)
        stackViewTitle2.addArrangedSubview(verMais2Button)
        
        stackViewTitle3.addArrangedSubview(title5Label)
        stackViewTitle3.addArrangedSubview(verMais3Button)
        
        
    }
    
    func setupConstraints() {
        
        exploreLocalView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            exploreLocalView.topAnchor.constraint(equalTo: view.topAnchor),
            exploreLocalView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            exploreLocalView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        exploreLocalBotaoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            exploreLocalBotaoView.heightAnchor.constraint(equalToConstant: 95),
            exploreLocalBotaoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            exploreLocalBotaoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            exploreLocalBotaoView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: exploreLocalView.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        pessoasCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pessoasCollectionView.heightAnchor.constraint(equalToConstant: 136)
        ])
        
        rendaCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rendaCollectionView.heightAnchor.constraint(equalToConstant: 136)
        ])
        
        descansarCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descansarCollectionView.heightAnchor.constraint(equalToConstant: 136)
        ])
        
        
        view.backgroundColor = .white
    }
    
    func setupAdditionalConfiguration() {
        
        verMais1Button.addTarget(self, action: #selector(tappedVerMais), for: .touchUpInside)
        verMais2Button.addTarget(self, action: #selector(tappedVerMais), for: .touchUpInside)
        verMais3Button.addTarget(self, action: #selector(tappedVerMais), for: .touchUpInside)
        exploreLocalBotaoView.concluirButton.addTarget(self, action: #selector(tappedConcluir), for: .touchUpInside)
        
     
    }
    
    @objc func tappedVerMais(sender: UIButton) {
        print("Apertou ver mais")
        delegate?.verMais()
        
    }
    
    @objc func tappedConcluir(sender: UIButton) {
        print("Concluiu")
    }
    
   
}

extension ExplorarLocalViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.pessoasCollectionView {
            return makePessoasCell(indexPath)
            
        } else if  collectionView == self.rendaCollectionView {
            return makeRendaCell(indexPath)
            
        } else if collectionView == self.descansarCollectionView {
            return makeDescansarCell(indexPath)
            
            
        } else{
            return UICollectionViewCell()
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Clicou em uma cell")
    }
    
    fileprivate func makePessoasCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = pessoasCollectionView.dequeueReusableCell(withReuseIdentifier: "pessoasCell", for: indexPath) as? PessoasCollectionViewCell
        cell?.configure(imagem: UIImage(named: "Rectangle 361") ?? UIImage(), lugar: "Lugar")
        return cell ?? UICollectionViewCell()
        
    }
    
    fileprivate func makeRendaCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = rendaCollectionView.dequeueReusableCell(withReuseIdentifier: "rendaCell", for: indexPath) as? RendaCollectionViewCell
        cell?.configure(imagem: UIImage(named: "Rectangle 361") ?? UIImage(), lugar: "Renda")
        return cell ?? UICollectionViewCell()
        
    }

    fileprivate func makeDescansarCell(_ indexPath: IndexPath) -> UICollectionViewCell {

        let cell = descansarCollectionView.dequeueReusableCell(withReuseIdentifier: "descansarCell", for: indexPath) as? DescansarCollectionViewCell
        cell?.configure(imagem: UIImage(named: "Rectangle 361") ?? UIImage(), lugar: "Descansar")
        return cell ?? UICollectionViewCell()

    }
}



// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ExplorarLocalViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ExplorarLocalViewController().showPreview().previewDevice("iPhone SE (3rd generation)")
            //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
