//
//  ChildTableViewController.swift
//  IosGenericTableview
//
//  Created by Md. Mehedi Hasan on 6/5/20.
//  Copyright © 2020 Mehedihasan290. All rights reserved.
//

import UIKit

class ChildTableViewController: BaseTableViewController <dogCell , Dog> {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewItem = [
               Dog(name: "ranga"),
               Dog(name: "banga"),
               Dog(name: "vutu")
               ]
    }


}


struct Dog {
       let name:String
   }

class dogCell: BaseCell<Dog>{
       
    override var tableViewItem: Dog!{
           didSet{
               textLabel?.text = self.tableViewItem.name
           }
       }
   }
