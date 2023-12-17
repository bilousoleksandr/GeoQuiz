//
//  Continent.swift
//
//
//  Created by Oleksandr Bilous on 17.12.2023.
//

import Foundation

public enum Continent: CaseIterable, Hashable, Codable {
    case africa
    case antarctica
    case asia
    case europe
    case oceania
    case northAmerica
    case southAmerica
    
    public var name: String {
        switch self {
        case .africa:
            return "Africe"
        case .antarctica:
            return "Antarctica"
        case .asia:
            return "Asia"
        case .europe:
            return "Europe"
        case .oceania:
            return "Oceania"
        case .northAmerica:
            return "North America"
        case .southAmerica:
            return "South America"
        }
    }
}
