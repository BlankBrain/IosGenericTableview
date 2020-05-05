//
//  BaseTableview.swift
//  IosGenericTableview
//
//  Created by Md. Mehedi Hasan on 6/5/20.
//  Copyright © 2020 Mehedihasan290. All rights reserved.
//

import Foundation
import UIKit

//MARK: - step 1 : create a tableviewController and point it to the child of this class
//MARK: - step 2 : supply a array of objects and custom cell type in the viewdidload/viewdidapper  - done
// this class only provides data showing function of tableview , didselect row method / other methods  would have to implimented in child class if needed



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
   
