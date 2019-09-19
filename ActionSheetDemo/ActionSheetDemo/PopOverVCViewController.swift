
//
//  PopOverVCViewController.swift
//  ActionSheetDemo
//
//  Created by SUNDEEP MANNE on 18/09/19.
//  Copyright © 2019 SUNDEEP MANNE. All rights reserved.
//

import UIKit

class PopOverVCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Save(_ sender: Any) {
        let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in
            print("User click Approve button")
        }))

        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
            print("User click Edit button")
        }))

        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
            print("User click Delete button")
        }))

        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in
            print("User click Dismiss button")
        }))

        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
