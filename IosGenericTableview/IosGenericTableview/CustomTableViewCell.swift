//
//  CustomTableViewCell.swift
//  IosGenericTableview
//
//  Created by Md. Mehedi Hasan on 8/5/20.
//  Copyright © 2020 Mehedihasan290. All rights reserved.
//

import UIKit

class CustomTableViewCell:BaseCell<Cat> {
    @IBOutlet weak var name: UILabel!

    @IBOutlet var breed: UILabel!
     
    
    override var tableViewItem: Cat!{
        didSet{
            print(self.tableViewItem as Any)
          backgroundColor = .lightGray
        
            if self.tableViewItem != nil {
                
                name?.text = self.tableViewItem.name
                breed?.text = self.tableViewItem.breed

            }else{
                print("error")
            }
           
            
        }
    }
    
}
