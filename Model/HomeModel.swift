//
//  HomeModel.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 22/09/22.
//

import UIKit

struct HomeModel {
    let texto: String
    let imagem: UIImage
}

let homeRoteiros: [HomeModel] = [
    HomeModel(texto: "Mochilão América Latina", imagem: UIImage(named: "peru") ?? UIImage()),
    HomeModel(texto: "China 2023", imagem: UIImage(named: "china") ?? UIImage()),
    HomeModel(texto: "Pelo litoral", imagem: UIImage(named: "litoral") ?? UIImage()),
]

let home2Roteiros: [HomeModel] = [
    HomeModel(texto: "Pelo Nordeste", imagem: UIImage(named: "pelo nordeste") ?? UIImage()),
    HomeModel(texto: "Mochilão América Latina", imagem: UIImage(named: "peru") ?? UIImage()),
    HomeModel(texto: "China 2023", imagem: UIImage(named: "china") ?? UIImage()),
    HomeModel(texto: "Pelo litoral", imagem: UIImage(named: "litoral") ?? UIImage()),
    

]
