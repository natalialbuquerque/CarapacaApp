//
//  Roteiros.swift
//  CarapacaApp
//
//  Created by Natália Pessoa de Azevedo Albuquerque on 19/09/22.
//

import Foundation

class Roteiro {
    var nomeDoRoteiro: String
    var cidades: String
    var destinos: String
    
    init(nomeDoRoteiro: String, cidades: String, destinos: String) {
        self.nomeDoRoteiro = nomeDoRoteiro
        self.cidades = cidades
        self.destinos = destinos
    }
}
