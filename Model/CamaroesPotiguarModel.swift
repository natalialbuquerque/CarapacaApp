//
//  CamaroesPotiguarModel.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 22/09/22.
//

import UIKit

struct CamaroesModel {
    let imagem: UIImage
}

let fotosCamaroes: [CamaroesModel] = [
    CamaroesModel(imagem: UIImage(named: "Camarões Potiguar 1") ?? UIImage()),
    CamaroesModel(imagem: UIImage(named: "Camarões Potiguar 2") ?? UIImage()),
    CamaroesModel(imagem: UIImage(named: "Camarões Potiguar 3") ?? UIImage()),
]
