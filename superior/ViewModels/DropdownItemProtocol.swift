//
//  DropdownItemProtocol.swift
//  superior
//
//  Created by Марк Русаков on 21.07.22.
//

import Foundation

protocol DropdownItemProtocol {
    var options: [DropdownOption] {get}
    var headerTitle : String {get}
    var dropdownTitle: String {get}
    var isSelected: Bool {get set}
    
}

protocol DropdownOptionProtocol {
    var toDropdownOption: DropdownOption {get}
}

struct DropdownOption {
    enum DropdownOptionType {
        case text(String)
        case number(Int)
    }
    let type: DropdownOptionType
    let formatted: String
    var isSelected: Bool
}
