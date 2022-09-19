//
//  ColocarDestinosViewController.swift
//  Carapaca App rascunho
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 08/09/22.
//

import UIKit

class ColocarDestinosViewController: UIViewController {
    let colocarDestinosView = ColocarDestinosView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = colocarDestinosView
    }
}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ColocarDestinosViewController_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ColocarDestinosViewController().showPreview().previewDevice("iPhone 13")
//            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
