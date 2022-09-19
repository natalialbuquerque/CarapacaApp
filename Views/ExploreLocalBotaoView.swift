//
//  ExploreLocalBotaoView.swift
//  Carapaca App rascunho
//
//  Created by mcor on 17/09/22.
//

import UIKit

class ExploreLocalBotaoView: UIView {
    
    let retangleBotaoView: UIView = {
        let retangleBotaoView = UIView()
        retangleBotaoView.backgroundColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        return retangleBotaoView
    }()
    
    let botaoView: UIView = {
        let botaoView = UIView()
        botaoView.backgroundColor = UIColor(red: 0.99, green: 0.99, blue: 0.99, alpha: 1.00)
        botaoView.layer.cornerRadius = 25
        return botaoView
    }()
    
    let concluirButton: UIButton = {
        let concluirButton = UIButton(configuration: .plain())
        concluirButton.setTitle("Concluir", for: .normal)
        concluirButton.setTitleColor(UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00), for: .normal)
                concluirButton.contentMode = .center
        let borderColor = UIColor(red: 0.14, green: 0.69, blue: 0.55, alpha: 1.00)
        concluirButton.layer.borderWidth = 2.5
        concluirButton.layer.borderColor = borderColor.cgColor
        concluirButton.layer.cornerCurve = .continuous
        concluirButton.layer.cornerRadius = 25
        concluirButton.clipsToBounds = true
        concluirButton.layer.masksToBounds = true

        concluirButton.setContentHuggingPriority(.defaultLow, for: .horizontal)
        concluirButton.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        concluirButton.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        return concluirButton
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
            setupHierarchy()
            setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupHierarchy() {
        addSubview(retangleBotaoView)
        addSubview(botaoView)
        addSubview(concluirButton)
    }
    
    func setupConstraints() {
        
        botaoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            botaoView.topAnchor.constraint(equalTo: topAnchor),
            botaoView.leadingAnchor.constraint(equalTo: leadingAnchor),
            botaoView.trailingAnchor.constraint(equalTo: trailingAnchor),
            botaoView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        retangleBotaoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            retangleBotaoView.topAnchor.constraint(equalTo: botaoView.centerYAnchor),
            retangleBotaoView.leadingAnchor.constraint(equalTo: leadingAnchor),
            retangleBotaoView.trailingAnchor.constraint(equalTo: trailingAnchor),
            retangleBotaoView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        concluirButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            concluirButton.topAnchor.constraint(equalTo: botaoView.topAnchor, constant: 20),
            concluirButton.centerXAnchor.constraint(equalTo: botaoView.centerXAnchor),
            concluirButton.widthAnchor.constraint(equalToConstant: 311),
            concluirButton.heightAnchor.constraint(equalToConstant: 48)
        ])
        
        
    }
}
// MARK: - Preview
#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ExploreLocalBotaoView_Preview: PreviewProvider {
    static var previews: some View {
        // view controller using programmatic UI
        Group {
            ExploreLocalBotaoView().showPreview().previewLayout(.fixed(width: 375.0, height: 95.0))
            //            ViewController().showPreview().previewDevice("iPhone SE (3rd generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
#endif
