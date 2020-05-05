//
//  ChildTableViewController.swift
//  IosGenericTableview
//
//  Created by Md. Mehedi Hasan on 6/5/20.
//  Copyright © 2020 Mehedihasan290. All rights reserved.
//

import UIKit
//MARK:- use this as a subview to show only a tableview
// use different file for defining custom cell if needed
// provide only a array of tableViewItem objects of any custom cell type and you are done
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
//MARK: - additional tableview functions can be added here if needed
extension ChildTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

// MARK: - object of any type which needs to be shown in the cell
struct Dog {
       let name:String
   }

//MARK:- custum cell where object needs to be mapped
class dogCell: BaseCell<Dog>{
       
    override var tableViewItem: Dog!{
           didSet{
               textLabel?.text = self.tableViewItem.name
           }
       }
   }
