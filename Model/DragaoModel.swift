//
//  DragaoModel.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 22/09/22.
//

import UIKit

struct DragaoModel {
    let imagem: UIImage
}

let fotosDragao: [DragaoModel] = [
    DragaoModel(imagem: UIImage(named: "Hostel Dragão do Mar 2") ?? UIImage()),
    DragaoModel(imagem: UIImage(named: "Hostel Dragão do Mar 3") ?? UIImage()),
    DragaoModel(imagem: UIImage(named: "Hostel Dragão do Mar 4") ?? UIImage()),
]
