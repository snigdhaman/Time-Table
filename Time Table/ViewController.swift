//
//  ViewController.swift
//  Time Table
//
//  Created by Chatterjee, Snigdhaman on 25/12/15.
//  Copyright © 2015 Chatterjee, Snigdhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var rows = 20
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func sliderAction(sender: AnyObject) {
        
        displayLabel.text = String(Int(sliderValue.value))
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return rows
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable = String(Int(sliderValue.value) * (indexPath.row + 1))
        
        cell.textLabel?.text = "\(String(Int(sliderValue.value))) x \(indexPath.row + 1) = \(timesTable)"
        
        return cell
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayLabel.text = String(Int(sliderValue.value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

