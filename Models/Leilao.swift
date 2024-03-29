//
//  Leilao.swift
//  Leilao
//
//  Created by Ândriu Coelho on 27/04/18.
//  Copyright © 2018 Alura. All rights reserved.
//

import Foundation

class Leilao {
    
    let descricao:String
    let imagem:String?
    var lances:[Lance]?
    
    init(descricao:String, imagem:String? = nil, lances:[Lance] = []) {
        self.descricao = descricao
        self.imagem = imagem
        self.lances = lances
    }
    
    func propoe(lance:Lance) {
        guard let listaDeLances = lances else {return}
        var total = 0
        
        for lanceAtual in listaDeLances {
            if lanceAtual.usuario == lance.usuario {
                total += 1
            }
            
        }
        
        if listaDeLances.count == 0 || ultimoLance(lances: listaDeLances).usuario != lance.usuario && total < 5 {
            lances?.append(lance)
        }}
        
    private func ultimoLance(lances:[Lance]) -> Lance{
            return lances[lances.count-1]
        }
}
