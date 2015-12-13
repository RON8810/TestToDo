//
//  ViewController.swift
//  test to do
//
//  Created by Falcon on 2015/11/29.
//  Copyright © 2015年 Falcon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
@IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        table.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
        cell.textLabel?.text = "テスト"
        return cell
    }
}

