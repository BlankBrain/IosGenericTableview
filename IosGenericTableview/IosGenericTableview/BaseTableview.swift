//
//  BaseTableview.swift
//  IosGenericTableview
//
//  Created by Md. Mehedi Hasan on 6/5/20.
//  Copyright © 2020 Mehedihasan290. All rights reserved.
//

import Foundation
import UIKit

class BaseTableViewController<T: BaseCell<U> , U>: UITableViewController  {
    
    var cellId:String = "cell"
    var tableViewItem = [U]()
    
    override func viewDidLoad() {
           super.viewDidLoad()
        tableView.register(T.self, forCellReuseIdentifier: cellId)
        
       }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewItem.count
       }
       
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! BaseCell<U>
        cell.tableViewItem = tableViewItem[indexPath.row]
         return cell
       }
    
}
class BaseCell<U>:UITableViewCell{
       var tableViewItem: U!
   }
   
