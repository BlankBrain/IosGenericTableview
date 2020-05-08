//
//  CustomTableViewController.swift
//  IosGenericTableview
//
//  Created by Md. Mehedi Hasan on 8/5/20.
//  Copyright © 2020 Mehedihasan290. All rights reserved.
//

import UIKit

class CustomTableViewController: BaseTableViewController <CustomTableViewCell  , Cat>  {

  
    @IBOutlet var name: UILabel!
    @IBOutlet var breed: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewItem = [
        Cat(name: "meao", breed: "desi"),
        Cat(name: "bao", breed: "bidesi")
        
        ]
        
}

}
