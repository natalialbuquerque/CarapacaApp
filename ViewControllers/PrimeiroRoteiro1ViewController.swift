//
//  PrimeiroRoteiroViewController.swift
//  CarapacaApp
//
//  Created by Cecília on 15/09/22.
//

import UIKit

class PrimeiroRoteiro1ViewController: UIViewController {
    let primeiroRoteiro1View = PrimeiroRoteiro1View()
    
    let data = ["João Pessoa", "Natal", "Fortaleza"]
    weak var delegate: HomeViewDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = primeiroRoteiro1View
        setupAdditionalConfiguration()
        
        primeiroRoteiro1View.destinoTableView.delegate = self
        primeiroRoteiro1View.destinoTableView.dataSource = self

        view.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
        view.layer.cornerRadius = 16
    }

}

//extensao criada para configurar a tableview
extension PrimeiroRoteiro1ViewController: UITableViewDelegate, UITableViewDataSource {
  
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
        
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.white
        //cell.selectedBackgroundView = bgColorView
        
        if indexPath.section == 0 {
                        let cell = tableView.dequeueReusableCell(withIdentifier: "PrimeiroRoteiro1TableViewCell", for: indexPath) as! PrimeiroRoteiro1TableViewCell
                        return cell
                    }
                    else if indexPath.section == 1 {
                        let cell = tableView.dequeueReusableCell(withIdentifier: "PrimeiroRoteiroTableViewCell") as! PrimeiroRoteiroTableViewCell
                        //set the data here
                        return cell
                    }
                    else {
                        let cell = tableView.dequeueReusableCell(withIdentifier: "PrimeiroRoteiroTableViewCell") as! PrimeiroRoteiroTableViewCell
                        //set the data here
                        return cell
                    }

//        let cell = tableView.dequeueReusableCell(withIdentifier: "PrimeiroRoteiro1TableViewCell", for: indexPath) as! PrimeiroRoteiro1TableViewCell
//        let bgColorView = UIView()
//        bgColorView.backgroundColor = UIColor.white
//        cell.selectedBackgroundView = bgColorView
        //cell.configure(title: data[indexPath.row])

        //return cell
    }
    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//            if indexPath.section == 0 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "PrimeiroRoteiroTableViewCell", for: indexPath) as! PrimeiroRoteiroTableViewCell
//                return cell
//            }
//            else if indexPath.section == 1 {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "PrimeiroRoteiroTableViewCell") as! PrimeiroRoteiroTableViewCell
//                //set the data here
//                return cell
//            }
//            else {
//                let cell = tableView.dequeueReusableCell(withIdentifier: "PrimeiroRoteiroTableViewCell") as! PrimeiroRoteiroTableViewCell
//                //set the data here
//                return cell
//            }
//        }
    
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
    
//    botaoConcluido
    func setupAdditionalConfiguration(){
         // MARK: - Outras configurações
        primeiroRoteiro1View.botaoConcluido.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
    }

    @objc func tappedButton(sender: UIButton){
        delegate?.criarRoteiro()
        
        let home2 = Home2ViewController()
        navigationController?.pushViewController(home2, animated: true)
    }
    
}


// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct PrimeiroRoteiro1ViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            UINavigationController(rootViewController: PrimeiroRoteiro1ViewController()).showPreview().previewDevice("iPhone 13")
            //ViewController().showPreview().previewDevice("iPhone 13").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
