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
        let table = UITableView(frame: .zero, style: .grouped)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorStyle = .none
        table.separatorColor = .white
        
        table.register(FavoritosTableViewCell.self, forCellReuseIdentifier: FavoritosTableViewCell.identifier)
        
        return table
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(favoritosTableView)
        view.addSubview(labelTitulo)
        
        configureTableView()
        setTableViewDelegate()
        setupConstraints()
        
        labelTitulo.text = "Favoritos"
        title = "Favoritos"
        //self.navigationItem.title = "Favoritos"
        self.navigationController?.navigationBar.backgroundColor = .white
        
    }
    
    //funcao para configurar a tableview
    func configureTableView() {
        favoritosTableView.rowHeight = 80
    }
    
    //funcao para iniciar o delegate
    func setTableViewDelegate() {
        favoritosTableView.delegate = self
        favoritosTableView.dataSource = self
    }
    
    //funcao para criar as constraints 
    func setupConstraints() {
        favoritosTableView.translatesAutoresizingMaskIntoConstraints = false
        favoritosTableView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        favoritosTableView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        favoritosTableView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        favoritosTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        
        favoritosTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true; favoritosTableView.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true; favoritosTableView.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true;   favoritosTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }
}

    //extensao criada para configurar a tableview
    extension FavoritosViewController: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "Mais Recentes"
        }
        
        func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
            let header = view as! UITableViewHeaderFooterView
            header.textLabel?.textColor = UIColor.black
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
