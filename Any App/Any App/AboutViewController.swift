//
//  AboutViewController.swift
//  Any App
//
//  Created by Fhict on 17/09/15.
//  Copyright (c) 2015 Roy Timmers. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func showTextField(sender: UIButton) {
        var alertView =
        UIAlertView(title: "your text is",
            message: textField.text,
            delegate: nil,
            cancelButtonTitle: "done!")
        alertView.show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
