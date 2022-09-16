//
//  FavoritosViewController.swift
//  CarapacaApp
//
//  Created by Cecília on 13/09/22.
//

import UIKit

class FavoritosViewController: UIViewController {
    
    var labelTitulo = UILabel()
    
    var favoritosTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        table.register(FavoritosTableViewCell.self, forCellReuseIdentifier: FavoritosTableViewCell.identifier)
        
        return table
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        view.addSubview(favoritosTableView)
        view.addSubview(labelTitulo)
        
        configureAttributes()
        setTableViewDelegate()
        setupConstraints()
        
        //title = "Favoritos"
        //self.navigationItem.title = "Favoritos"
        self.navigationController?.navigationBar.backgroundColor = .white
        
    }
    
    //funcao para configurar os elementos
    func configureAttributes() {
        favoritosTableView.rowHeight = 80
        
        labelTitulo.textAlignment = .left
        labelTitulo.text = "Favoritos"
        labelTitulo.textColor = .black
        labelTitulo.font = UIFont.boldSystemFont(ofSize: 24)
    }
    
    //funcao para iniciar o delegate
    func setTableViewDelegate() {
        favoritosTableView.delegate = self
        favoritosTableView.dataSource = self
    }
    
    //funcao para criar as constraints 
    func setupConstraints() {
        favoritosTableView.translatesAutoresizingMaskIntoConstraints = false
        favoritosTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor, constant: 44).isActive = true
        favoritosTableView.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 16).isActive = true
        favoritosTableView.rightAnchor.constraint(equalTo:view.rightAnchor, constant: -16).isActive = true
        favoritosTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        
        favoritosTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor, constant: 44).isActive = true; favoritosTableView.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true; favoritosTableView.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true;   favoritosTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true

        labelTitulo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelTitulo.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 16),
            labelTitulo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            labelTitulo.bottomAnchor.constraint(equalTo: favoritosTableView.topAnchor, constant: 8)
        ])
        
        
    }

}

    //extensao criada para configurar a tableview
    extension FavoritosViewController: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "Mais Recentes"
        }
        
        func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
            let header = view as! UITableViewHeaderFooterView
            header.textLabel?.textColor = UIColor.systemGray
            header.contentView.backgroundColor = UIColor.white
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: FavoritosTableViewCell.identifier, for: indexPath)
            //cell.textLabel?.text = "hello world"
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 80
        }
    }



        
    

    // MARK: - Preview
    #if DEBUG
    import SwiftUI

    @available(iOS 13, *)
    struct FavoritosViewController_Preview: PreviewProvider {
        static var previews: some View {
            // view controller using programmatic UI
            Group {
                UINavigationController(rootViewController: FavoritosViewController()).showPreview().previewDevice("iPhone 13")
                //ViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
            }
        }
    }
    #endif
