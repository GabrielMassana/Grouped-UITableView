//
//  ViewController.swift
//  Grouped-UITableView
//
//  Created by GabrielMassana on 08/11/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import UIKit

import PureLayout

class ViewController: UIViewController {

    //MARK: - Accessors
    
    /// Table view to display the data.
    lazy var tableView: UITableView = {
        
        let tableView: UITableView = UITableView(frame: CGRect.zero,
                                                 style: .Grouped)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor.whiteColor()
        tableView.separatorStyle = .SingleLineEtched
        
        return tableView
    }()
    
    var heightAtIndexPath = [NSIndexPath : NSNumber]()
    
    var sections: [Section] = {
        
        var sections = [
            
            Section(section: .one,
                rows: [.name,
                    .surname,
                    .age]),
            
            Section(section: .two,
                rows: [.email]),
            
            Section(section: .three,
                rows: [.address,
                    .phone])
            ]
        
        return sections
    }()
    
    //MARK: - ViewLifeCycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        /*-------------------*/
        
        updateViewConstraints()
        
        /*-------------------*/
        
        view.backgroundColor = UIColor.whiteColor()
    }
    
    //MARK: - Constraints
    
    override func updateViewConstraints() {
        
        super.updateViewConstraints()
        
        /*-------------------*/
        
        tableView.autoPinEdgesToSuperviewEdges()
    }
}

