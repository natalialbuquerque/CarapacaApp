//
//  MainTabBarViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
//        let vc2 = UINavigationController(rootViewController: ExplorarViewController())
//        let vc3 = UINavigationController(rootViewController: FavoritosViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "map")
//        vc2.tabBarItem.image = UIImage(systemName: "globe.americas.fill")
//        vc3.tabBarItem.image = UIImage(systemName: "heart.fill")
        
        tabBar.tintColor = .systemGreen
        
        vc1.title = "Roteiro"
//        vc2.title = "Explorar"
//        vc3.title = "Favoritos"
 
        
        setViewControllers([vc1], animated: true)
        
    }
    


}
