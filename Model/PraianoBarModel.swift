//
//  PraianoBarModel.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 21/09/22.
//

import UIKit

struct PraianoModel {
    let imagem: UIImage
}

let fotosPraiano: [PraianoModel] = [
    PraianoModel(imagem: UIImage(named: "Praiano Bar 2") ?? UIImage()),
    PraianoModel(imagem: UIImage(named: "Praiano Bar 3") ?? UIImage()),
    PraianoModel(imagem: UIImage(named: "Praiano Bar 4") ?? UIImage()),
]
