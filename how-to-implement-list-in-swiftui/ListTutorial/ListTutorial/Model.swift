//
//  Model.swift
//  ListTutorial
//
//  Created by Muhammad Osama Naeem on 11/18/22.
//

import Foundation
struct Country: Hashable, Identifiable {
    var id = UUID()
    var countryName : String = ""
}
struct Place: Identifiable {
    var id = UUID()
    var name : String = ""
    var countries = [Country]()
    
}

struct DataSource {
    static var continent = [Place(name: "Asia",
                                  countries: [Country(countryName: "๐น๐ญ Thailand"),Country(countryName: "๐ฏ๐ต Japan"),Country(countryName: "๐ฎ๐ณ India"),Country(countryName: "๐ต๐ฐ Pakistan"),Country(countryName: "๐ป๐ณ Vietnam")]),
                            Place(name: "Africa",
                                  countries: [Country(countryName: "๐ฟ๐ฆ South Africa"),Country(countryName: "๐ธ๐ฉ Sudan"),Country(countryName: "๐ณ๐ฌ Nigeria"),Country(countryName: "๐ณ๐ฆ Namibia"),Country(countryName: "๐ฐ๐ช Kenya")]),
                            Place(name: "South America",
                                  countries: [Country(countryName: "๐ง๐ท Brazil"),Country(countryName: "๐จ๐ด Colombia"),Country(countryName: "๐จ๐ฑ Chile"),Country(countryName: "๐ฆ๐ท Argentina"),Country(countryName: "๐ง๐ด Bolivia")]),
                            Place(name: "North America",
                                  countries: [Country(countryName: "๐จ๐ฆ Canada"),Country(countryName: "๐บ๐ธ United States of America")]),
                            Place(name: "Europe",
                                  countries: [Country(countryName: "๐ซ๐ท France"),Country(countryName: "๐ฉ๐ช Germany"),Country(countryName: "๐จ๐ญSwitzerland"),Country(countryName: "๐ฌ๐ง United Kingdom"),Country(countryName: "๐ณ๐ฑ Netherland")]),
                            Place(name: "Oceania",
                                  countries: [Country(countryName: "๐ฆ๐บ Australia"),Country(countryName: "๐ณ๐ฟ New Zealand"),Country(countryName: "๐ต๐ฌ Papua New Guinea")]),
                            Place(name: "Antartica",
                                  countries: [Country(countryName: "๐ฅถ")])
                            
    ]
}
