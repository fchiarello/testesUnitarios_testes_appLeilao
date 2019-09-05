//
//  Avaliador.swift
//  Leilao
//
//  Created by Fellipe Ricciardi Chiarello on 27/08/19.
//  Copyright © 2019 Alura. All rights reserved.
//

import Foundation

class Avaliador {
    
    private var maiorDeTodos = Double.leastNonzeroMagnitude
    private var menorDeTodos = Double.greatestFiniteMagnitude
    private var maiores: [Lance] = []
    
    func avalia(leilao: Leilao) {
        
        guard let lances = leilao.lances else {return}
        
        for lance in lances {
            if lance.valor > maiorDeTodos {
                maiorDeTodos = lance.valor
            }
             if lance.valor < menorDeTodos {
                menorDeTodos = lance.valor
            }
        }
        
        pegaOsMaioresLancesDoLeilao(leilao: leilao)
    }
    
    private func pegaOsMaioresLancesDoLeilao (leilao: Leilao) {
        
        guard let lances = leilao.lances else {return}
        maiores = lances.sorted(by: { (lista1 , lista2) -> Bool in
            return lista1.valor > lista2.valor
        })
        
        let maioresLances = maiores.prefix(3)
        
        maiores = Array(maioresLances)
        
        
    }


    func maiorLance () -> Double {
        return maiorDeTodos
    }

    func menorLance () -> Double{
        return menorDeTodos
    }
    
    func tresMaiores() -> [Lance] {
        return maiores
    }
    
}
