//
//  RecifeModels.swift
//  CarapacaApp
//
//  Created by mcor on 21/09/22.
//

import UIKit

struct RecifeModels {
    let texto: String
    let imagem: UIImage
}

let recifePessoas: [RecifeModels] = [
    RecifeModels(texto: "RocketBar", imagem: UIImage(named: "Recife Bar") ?? UIImage()),
    RecifeModels(texto: "Praça dos Livros", imagem: UIImage(named: "Recife livros") ?? UIImage()),
    RecifeModels(texto: "Clube de Inglês", imagem: UIImage(named: "Recife Encontro") ?? UIImage()),
    RecifeModels(texto: "Bar da Praia", imagem: UIImage(named: "Recife Bar da Praia") ?? UIImage())

]

let recifeRenda: [RecifeModels] = [
    RecifeModels(texto: "Sol e Mar Restô", imagem: UIImage(named: "Recife Renda BeachClub") ?? UIImage()),
    RecifeModels(texto: "Passeador de Cães", imagem: UIImage(named: "Recife Renda DogWalker") ?? UIImage()),
    RecifeModels(texto: "Chaves Pub", imagem: UIImage(named: "Recife Renda Bar") ?? UIImage()),
    RecifeModels(texto: "Bar do Zé", imagem: UIImage(named: "Recife Renda Garcon") ?? UIImage())
]


let recifeDescansar: [RecifeModels] = [
    RecifeModels(texto: "Boa Vista B&B", imagem: UIImage(named: "Recife Descansar 1") ?? UIImage()),
    RecifeModels(texto: "Hotel 4 Cantos", imagem: UIImage(named: "Recife Descansar 2") ?? UIImage()),
    RecifeModels(texto: "Hostel da Cláudia", imagem: UIImage(named: "Recife Descansar 3") ?? UIImage()),
    RecifeModels(texto: "Casa Amarela Hostel", imagem: UIImage(named: "Recife Descansar 4") ?? UIImage())
]
