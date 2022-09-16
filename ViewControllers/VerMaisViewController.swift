//
//  VerMaisViewController.swift
//  CarapacaApp
//
//  Created by Cecília on 16/09/22.
//

import UIKit

class VerMaisViewController: UIViewController {
    
    let localizacaoButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Sua Localização", for: .normal)
        button.setTitleColor(UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00), for: .normal)
        button.tintColor = UIColor(red: 0.01, green: 0.23, blue: 0.17, alpha: 1.00)
        button.layer.cornerCurve = .circular
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        button.setContentHuggingPriority(.defaultLow, for: .horizontal)
        button.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        button.setImage(UIImage(systemName: "chevron.down"), for: .normal)
        return button
    }()
    
    private let verMaisTableView: UITableView = {
        let verMaisTableView = UITableView()
        verMaisTableView.separatorStyle = .none
        verMaisTableView.register(VerMaisTableViewCell.self, forCellReuseIdentifier: VerMaisTableViewCell.identifier)
        return verMaisTableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        verMaisTableView.backgroundColor = .white
        
        view.addSubview(verMaisTableView)
        view.addSubview(localizacaoButton)

        self.navigationItem.title = "Nome da Categoria"
        
        verMaisTableView.delegate = self
        verMaisTableView.dataSource = self
        
        setupConstraints()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        verMaisTableView.rowHeight = 80
    }
    
    func setupConstraints(){
        verMaisTableView.translatesAutoresizingMaskIntoConstraints = false
        verMaisTableView.topAnchor.constraint(equalTo:localizacaoButton.bottomAnchor, constant: 16).isActive = true
        verMaisTableView.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 16).isActive = true
        verMaisTableView.rightAnchor.constraint(equalTo:view.rightAnchor, constant: -16).isActive = true
        verMaisTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        
        verMaisTableView.topAnchor.constraint(equalTo:localizacaoButton.bottomAnchor, constant: 16).isActive = true; verMaisTableView.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true; verMaisTableView.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true;   verMaisTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true

        
        localizacaoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            localizacaoButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
            localizacaoButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            localizacaoButton.widthAnchor.constraint(equalToConstant: 180)
        ])
        

    }
    
}
    // MARK: - Organizar TableView
extension VerMaisViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = verMaisTableView.dequeueReusableCell(withIdentifier: VerMaisTableViewCell.identifier, for: indexPath)
            
            return cell
        }
}

// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct VerMaisViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            UINavigationController(rootViewController: VerMaisViewController()).showPreview().previewDevice("iPhone 13")
            //ViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
