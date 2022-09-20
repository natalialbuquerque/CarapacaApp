//
//  PrimeiroRoteiroViewController.swift
//  CarapacaApp
//
//  Created by Cecília on 15/09/22.
//

import UIKit

class PrimeiroRoteiroViewController: UIViewController {
    let primeiroRoteiroView = PrimeiroRoteiroView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = primeiroRoteiroView

        view.backgroundColor = UIColor(red: 0.93, green: 0.93, blue: 0.93, alpha: 1.00)
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
