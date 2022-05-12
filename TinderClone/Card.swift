//
//  Card.swift
//  TinderClone
//
//  Created by Paulo Henrique Gomes da Silva on 04/05/22.
//

import UIKit
import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let age: Int
    let bio: String
    
    // Card x position
    var x: CGFloat = 0.0
    
    // Card y position
    var y: CGFloat = 0.0
    
    // Card rotation angle
    var degree: Double = 0.0
    
    // Dicionario de cards da tela
    static var data: [Card] {
        [
            Card(name: "Rosie", imageName: "p0", age: 21, bio: "Exemplo de bio aqui"),
            Card(name: "Rosie", imageName: "p1", age: 21, bio: "Exemplo de bio aqui"),
            Card(name: "Rosie", imageName: "p2", age: 21, bio: "Exemplo de bio aqui"),
            Card(name: "Rosie", imageName: "p3", age: 21, bio: "Exemplo de bio aqui"),
            Card(name: "Rosie", imageName: "p4", age: 21, bio: "Exemplo de bio aqui"),
            Card(name: "Rosie", imageName: "p5", age: 21, bio: "Exemplo de bio aqui"),
        ]
    }
}
