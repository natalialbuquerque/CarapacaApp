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
    
    var nomes = ["Bar da Maria", "Restaurante do João", "Pousada Sol e Mar", "Pet Lovers", "Pousada 4 cantos", "Acampamento Criatura", "Casa do Axé", "Centro de Eventos do Cariri", "Pousada Mar Aberto", "Restaurante Casa Lisboa"]
    
    var cidades = ["Salvador", "São Luís", "Olinda", "Recife", "Olinda", "Crato", "Olinda", "Crato", "Salvador", "Salvador"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(labelTitulo)
        view.addSubview(favoritosTableView)
        
        configureAttributes()
        setTableViewDelegate()
        setupConstraints()
        
        //title = "Favoritos"
        //self.navigationItem.title = "Favoritos"
        //self.navigationController?.navigationBar.backgroundColor = .white
        
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
        favoritosTableView.topAnchor.constraint(equalTo:labelTitulo.bottomAnchor, constant: 12).isActive = true
        favoritosTableView.leftAnchor.constraint(equalTo:view.leftAnchor, constant: 16).isActive = true
        favoritosTableView.rightAnchor.constraint(equalTo:view.rightAnchor, constant: -16).isActive = true
        favoritosTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        
        favoritosTableView.topAnchor.constraint(equalTo:labelTitulo.bottomAnchor, constant: 12).isActive = true; favoritosTableView.leadingAnchor.constraint(equalTo:view.leadingAnchor).isActive = true; favoritosTableView.trailingAnchor.constraint(equalTo:view.trailingAnchor).isActive = true;   favoritosTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true

        labelTitulo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelTitulo.leadingAnchor.constraint(equalTo:view.leadingAnchor, constant: 17),
            labelTitulo.topAnchor.constraint(equalTo: view.topAnchor, constant: 88),
            labelTitulo.bottomAnchor.constraint(equalTo: favoritosTableView.topAnchor, constant: -4)
            
        ])
        
        
    }

}

    //extensao criada para configurar a tableview
    extension FavoritosViewController: UITableViewDelegate, UITableViewDataSource {
    
        func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let header = UIView(frame: CGRect(x: 0, y: 4, width: view.frame.size.width, height: 24))
            header.backgroundColor = UIColor(white: 1, alpha: 0.95)
            let label = UILabel(frame: CGRect(x: 2, y: 0, width: header.frame.size.width, height: header.frame.size.height))
            header.addSubview(label)
            label.text = "Mais Recentes"
            label.textColor = .systemGray
            return header
        }
        
        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 24
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return nomes.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: FavoritosTableViewCell.identifier, for: indexPath) as! FavoritosTableViewCell
            let nome = nomes[indexPath.row]
            let cidade = cidades[indexPath.row]
            cell.lugarLabel.text = nome
            cell.cidadeLabel.text = cidade
            cell.lugarImageView.image = UIImage(named: nome)
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

