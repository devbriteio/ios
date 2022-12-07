//
//  Model.swift
//  ParisProject
//
//  Created by Muhammad Osama Naeem on 12/1/22.
//

import Foundation

struct ParisCafe : Identifiable{
    var id: String
    var name: String
    var rating: String
    var picture: String
}

class DataSource {
    static let data : [ParisCafe] = [ParisCafe(id: "PRS100", name: "Café de Flore", rating: "4/5", picture: "flora"),ParisCafe(id: "PRS101", name: "The Caféothèque of Paris", rating: "4.2/5", picture: "TheCaféothèqueofParis"),ParisCafe(id: "PRS102", name: "Cuppa - Salon de Cafe", rating: "4.3/5", picture: "cuppa"),ParisCafe(id: "PRS103", name: "Republique of Coffee", rating: "4.1/5", picture: "rofcoffee"),ParisCafe(id: "PRS104", name: "fringe", rating: "4.6/5", picture: "fringe"),ParisCafe(id: "PRS105", name: "Malongo Cafe", rating: "4.4/5", picture: "TheCaféothèqueofParis")]
}
