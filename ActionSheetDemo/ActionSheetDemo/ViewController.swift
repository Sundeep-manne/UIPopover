//
//  ViewController.swift
//  ActionSheetDemo
//
//  Created by SUNDEEP MANNE on 18/09/19.
//  Copyright © 2019 SUNDEEP MANNE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ShowPopover(_ sender: UIButton) {
        guard let popVC = storyboard?.instantiateViewController(withIdentifier: "popVC") else { return }

        let nav = UINavigationController(rootViewController: popVC)
        nav.modalPresentationStyle = .popover
        nav.popoverPresentationController?.delegate = sender as? UIPopoverPresentationControllerDelegate
        nav.popoverPresentationController?.sourceView = sender
        nav.popoverPresentationController?.sourceRect = CGRect(x: sender.frame.origin.x, y: sender.frame.origin.y, width: 0, height: 0)
        nav.preferredContentSize = CGSize(width: 376, height: 441)
        self.present(nav, animated: true)
    }
}
