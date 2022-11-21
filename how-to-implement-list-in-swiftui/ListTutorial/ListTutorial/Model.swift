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
                                  countries: [Country(countryName: "🇹🇭 Thailand"),Country(countryName: "🇯🇵 Japan"),Country(countryName: "🇮🇳 India"),Country(countryName: "🇵🇰 Pakistan"),Country(countryName: "🇻🇳 Vietnam")]),
                            Place(name: "Africa",
                                  countries: [Country(countryName: "🇿🇦 South Africa"),Country(countryName: "🇸🇩 Sudan"),Country(countryName: "🇳🇬 Nigeria"),Country(countryName: "🇳🇦 Namibia"),Country(countryName: "🇰🇪 Kenya")]),
                            Place(name: "South America",
                                  countries: [Country(countryName: "🇧🇷 Brazil"),Country(countryName: "🇨🇴 Colombia"),Country(countryName: "🇨🇱 Chile"),Country(countryName: "🇦🇷 Argentina"),Country(countryName: "🇧🇴 Bolivia")]),
                            Place(name: "North America",
                                  countries: [Country(countryName: "🇨🇦 Canada"),Country(countryName: "🇺🇸 United States of America")]),
                            Place(name: "Europe",
                                  countries: [Country(countryName: "🇫🇷 France"),Country(countryName: "🇩🇪 Germany"),Country(countryName: "🇨🇭Switzerland"),Country(countryName: "🇬🇧 United Kingdom"),Country(countryName: "🇳🇱 Netherland")]),
                            Place(name: "Oceania",
                                  countries: [Country(countryName: "🇦🇺 Australia"),Country(countryName: "🇳🇿 New Zealand"),Country(countryName: "🇵🇬 Papua New Guinea")]),
                            Place(name: "Antartica",
                                  countries: [Country(countryName: "🥶")])
                            
    ]
}
