//
//  ViewController.swift
//  Simple Table
//
//  Created by Christopher D Fontana on 2/27/17.
//  Copyright © 2017 Christopher D Fontana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private let dwarves = ["Sleepy","Sneezy","Bashful","Happy","Doc","Grumpy","Dopey","Thorin","Dorin","Nori","Ori","Balin","Dwalin","Fili","Kili","Oin","Gloin","Bifur","Bofur","Bombur"]
    
    let simpleTableIdentifier = "SimpleTableIdentifier"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK:-
    //MARK: Table View Data Source methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return dwarves.count
    }
    
    // this method is called by the table view when it needs to draw one of its rows.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        
      var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        
        if(cell == nil){
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: simpleTableIdentifier)
        }
        
        let image = UIImage(named: "star")
        cell?.imageView?.image = image
        let highlightedImage = UIImage(named: "star2")
        cell?.imageView?.highlightedImage = highlightedImage
        
        if indexPath.row < 7 {
            cell?.detailTextLabel?.text = "Mr Disndy"
        }else{
            cell?.detailTextLabel?.text = "Mr Tolkien"
        }
        cell?.textLabel?.text = dwarves[indexPath.row]
        return cell!
 
    }

}

