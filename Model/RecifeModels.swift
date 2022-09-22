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

let jpPessoas: [RecifeModels] = [
    RecifeModels(texto: "Praiano Bar", imagem: UIImage(named: "Praiano Bar 3") ?? UIImage()),
    RecifeModels(texto: "Clube de leitura", imagem: UIImage(named: "JP Pessoas 2") ?? UIImage()),
    RecifeModels(texto: "Jardim Botânico", imagem: UIImage(named: "JP Pessoas 3") ?? UIImage()),
    RecifeModels(texto: "Beta Coworking", imagem: UIImage(named: "JP Pessoas 4") ?? UIImage())

]

let jpRenda: [RecifeModels] = [
    RecifeModels(texto: "Instrutor de Yoga", imagem: UIImage(named: "JP Renda 1") ?? UIImage()),
    RecifeModels(texto: "Aula de pintura para crianças", imagem: UIImage(named: "JP Renda 2") ?? UIImage()),
    RecifeModels(texto: "Atendente no JPCafé", imagem: UIImage(named: "JP Renda 3") ?? UIImage()),
    RecifeModels(texto: "Barista no RegionalCafé", imagem: UIImage(named: "JP Renda 4") ?? UIImage())
]


let jpDescansar: [RecifeModels] = [
    RecifeModels(texto: "Hotel Estrela", imagem: UIImage(named: "JP Descansar 1") ?? UIImage()),
    RecifeModels(texto: "Luna B&B", imagem: UIImage(named: "JP Descansar 2") ?? UIImage()),
    RecifeModels(texto: "Hotel Central", imagem: UIImage(named: "JP Descansar 3") ?? UIImage()),
    RecifeModels(texto: "Resort Paraíba", imagem: UIImage(named: "JP Descansar 4") ?? UIImage())
]

let natalPessoas: [RecifeModels] = [
    RecifeModels(texto: "Clube de Línguas", imagem: UIImage(named: "Natal Pessoas 1") ?? UIImage()),
    RecifeModels(texto: "Feira da Sé", imagem: UIImage(named: "Natal Pessoas 2") ?? UIImage()),
    RecifeModels(texto: "Parque da Cidade", imagem: UIImage(named: "Natal Pessoas 3") ?? UIImage()),
    RecifeModels(texto: "Clube do livro", imagem: UIImage(named: "Natal Pessoas 4") ?? UIImage())
]

let natalRenda: [RecifeModels] = [
    RecifeModels(texto: "Noir Café", imagem: UIImage(named: "Natal Renda 1") ?? UIImage()),
    RecifeModels(texto: "Camarões Potiguar", imagem: UIImage(named: "Camarões Potiguar 4") ?? UIImage()),
    RecifeModels(texto: "Hostel RN", imagem: UIImage(named: "Natal Renda 3") ?? UIImage()),
    RecifeModels(texto: "Floricultura da Rosa", imagem: UIImage(named: "Natal Renda 4") ?? UIImage())
]

let natalDescansar: [RecifeModels] = [
    RecifeModels(texto: "Luz do Sol Hostel", imagem: UIImage(named: "Natal Descansar 1") ?? UIImage()),
    RecifeModels(texto: "Pousada da Ana", imagem: UIImage(named: "Natal Descansar 2") ?? UIImage()),
    RecifeModels(texto: "Camping Natal", imagem: UIImage(named: "Natal Descansar 3") ?? UIImage()),
    RecifeModels(texto: "Aventura Camping", imagem: UIImage(named: "Natal Descansar 4") ?? UIImage())
]

let fortalezaPessoas: [RecifeModels] = [
    RecifeModels(texto: "Curso de Barista", imagem: UIImage(named: "Fortaleza Pessoas 1") ?? UIImage()),
    RecifeModels(texto: "CorridaClub", imagem: UIImage(named: "Fortaleza Pessoas 2") ?? UIImage()),
    RecifeModels(texto: "Oficina de Costura", imagem: UIImage(named: "Fortaleza Pessoas 3") ?? UIImage()),
    RecifeModels(texto: "Festival das Cores", imagem: UIImage(named: "Fortaleza Pessoas 4") ?? UIImage())
]

let fortalezaRenda: [RecifeModels] = [
    RecifeModels(texto: "Leitura Kids", imagem: UIImage(named: "Fortaleza Renda 1") ?? UIImage()),
    RecifeModels(texto: "Cafeteria da Luiza", imagem: UIImage(named: "Fortaleza Renda 2") ?? UIImage()),
    RecifeModels(texto: "Empório VerdeLar", imagem: UIImage(named: "Fortaleza Renda 3") ?? UIImage()),
    RecifeModels(texto: "Hostel Ceará", imagem: UIImage(named: "Fortaleza Renda 4") ?? UIImage())
]

let fortalezaDescansar: [RecifeModels] = [
    RecifeModels(texto: "BeiraMar Hotel", imagem: UIImage(named: "Fortaleza Descansar 1") ?? UIImage()),
    RecifeModels(texto: "Hotel Fortal", imagem: UIImage(named: "Fortaleza Descansar 2") ?? UIImage()),
    RecifeModels(texto: "Hostel Dragão do Mar", imagem: UIImage(named: "Hostel Dragão do Mar 1") ?? UIImage()),
    RecifeModels(texto: "Parque Camping", imagem: UIImage(named: "Fortaleza Descansar 4") ?? UIImage())
]
