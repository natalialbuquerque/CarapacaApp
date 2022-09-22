//
//  PrimeiroRoteiroViewController.swift
//  CarapacaApp
//
//  Created by Cecília on 15/09/22.
//

import UIKit

class PrimeiroRoteiroViewController: UIViewController {
    let primeiroRoteiroView = PrimeiroRoteiroView()
    
    let data = ["João Pessoa", "Natal", "Fortaleza"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = primeiroRoteiroView
        
        primeiroRoteiroView.destinoTableView.delegate = self
        primeiroRoteiroView.destinoTableView.dataSource = self

        view.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        view.layer.cornerRadius = 16
    }

}

//extensao criada para configurar a tableview
extension PrimeiroRoteiroViewController: UITableViewDelegate, UITableViewDataSource {
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return data[section]
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(x: 0, y: 4, width: view.frame.size.width, height: 24))
        header.backgroundColor = UIColor.white
        
        let label = UILabel(frame: CGRect(x: 36, y: 2, width: header.frame.size.width, height: header.frame.size.height))
        header.addSubview(label)
        label.text = data[section]
        label.textColor = .black
        
        let image = UIImageView(image: UIImage(named: "luz"))
        header.addSubview(image)
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 32
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PrimeiroRoteiroTableViewCell", for: indexPath) as! PrimeiroRoteiroTableViewCell
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.white
        cell.selectedBackgroundView = bgColorView
        //cell.configure(title: data[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            
            let explorarTela = ExplorarJPViewController()
                  self.navigationController?.pushViewController(explorarTela, animated: true)
            
                    } else if indexPath.section == 1 {
                        
                        let explorarTela = ExplorarNatalViewController()
                              self.navigationController?.pushViewController(explorarTela, animated: true)
                        
                    } else if indexPath.section == 2 {
                       
                        let explorarTela = ExplorarFortalezaViewController()
                              self.navigationController?.pushViewController(explorarTela, animated: true)
                    }
    }
    
}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct PrimeiroRoteiroViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            UINavigationController(rootViewController: PrimeiroRoteiroViewController()).showPreview().previewDevice("iPhone 13")
            //ViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
