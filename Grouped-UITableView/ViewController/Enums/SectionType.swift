//
//  SectionType.swift
//  Grouped-UITableView
//
//  Created by GabrielMassana on 08/11/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import Foundation

enum SectionType {
    
    case one
    case two
    case three
    
    func sectionTitle() -> String {
        
        switch self {
            
        case .one:
            
            return NSLocalizedString("One", comment: "one_title")
            
        case .two:
            
            return NSLocalizedString("Two", comment: "two_title")
            
        case .three:
            
            return NSLocalizedString("Three", comment: "three_title")
        }
    }
}