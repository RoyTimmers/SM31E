//
//  TableTableViewController.swift
//  Assignment week4
//
//  Created by Fhict on 24/09/15.
//  Copyright (c) 2015 Roy Timmers. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var pirates = [Pirate]()
    
    func loadJsonData()
    {
        let url = NSURL(string: "http://athena.fhict.nl/users/i886625/pirates.json")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        let dataTask = session.dataTaskWithRequest(request) { (data,response, error) -> Void in
            do
            {
                if let jsonObject: AnyObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                {
                    self.parseJsonData(jsonObject)
                }
                
            }
            catch
            {
                print("Error parsing JSON data")
                
            }
        }
        dataTask.resume()
    }
    
    func parseJsonData(jsonObject:AnyObject)
    {
        if let jsonData = jsonObject as? NSArray
        {
            for item in jsonData
            {
                do{
                
                let newPirate = Pirate (
                    name: item.objectForKey("name") as! String,
                    life: item.objectForKey("life") as! String,
                    yearsActive: item.objectForKey("yearsActive") as! String ,
                    countryOrigin: item.objectForKey("countryOrigin") as! String,
                    comments: item.objectForKey("comments") as! String
                )
                pirates.append(newPirate)
                }
            }
        }
        self.tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return [pirates].count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        as! UITableViewCell
        
        var currentRow = indexPath.row
        var currentPirate = self.pirates[currentRow]
        cell.textLabel?.text = currentPirate.name
        return cell;
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
