//
//  ViewController.swift
//  SideMenuTest
//
//  Created by macbook on 05/02/2024.
//

import UIKit
import SideMenu

class ViewController: CustomViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sidemenuOnCLick(_ sender: Any) {
       showSideMenuController(delegate: self)
    }
    
    override func clickedOnItem(item: Int) {
        print("Navigate")
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let toViewController = storyBoard.instantiateViewController(identifier: "ToViewController") as? ToViewController else { return }
        self.navigationController?.pushViewController(toViewController, animated: true)
    }
    
}

