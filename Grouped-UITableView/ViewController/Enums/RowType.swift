//
//  RowType.swift
//  Grouped-UITableView
//
//  Created by GabrielMassana on 08/11/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import UIKit

enum RowType {
    
    case name
    case surname
    case age
    case email
    case address
    case phone
    
    func rowCell() -> UITableViewCell {
        
        switch self {
            
        case .name:
            
            let cell = UITableViewCell()
            
            return cell
            
        case .surname:
            
            let cell = UITableViewCell()
            
            return cell
            
        case .age:
            
            let cell = UITableViewCell()
            
            return cell
            
        case .email:
            
            let cell = UITableViewCell()
            
            return cell
            
        case .address:
            
            let cell = UITableViewCell()
            
            return cell
            
        case .phone:
            
            let cell = UITableViewCell()
            
            return cell
        }
    }
    
    func rowDetail() -> String {
        
        switch self {
            
        case .name:
            
            return NSLocalizedString("name", comment: "name_title")
            
        case .surname:
            
            return NSLocalizedString("surname", comment: "surname_title")
            
        case .age:
            
            return NSLocalizedString("age", comment: "age_title")
            
        case .email:
            
            return NSLocalizedString("email", comment: "email_title")
            
        case .address:
            
            return NSLocalizedString("address", comment: "address_title")
            
        case .phone:
            
            return NSLocalizedString("phone", comment: "phone_title")
        }
    }

}
