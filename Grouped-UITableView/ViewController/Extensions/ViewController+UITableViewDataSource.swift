//
//  ViewController+UITableViewDataSource.swift
//  Grouped-UITableView
//
//  Created by GabrielMassana on 08/11/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    
    //MARK: - UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sections[section].rows.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return sections.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let rowType = sections[indexPath.section].rows[indexPath.row]
        
        let cell = rowType.rowCell()
        cell.textLabel?.text = rowType.rowDetail()
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let sectionType = sections[section].section
        
        return sectionType.sectionTitle()
    }
}
