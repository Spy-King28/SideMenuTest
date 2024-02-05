//
//  MenuViewController.swift
//  SideMenuTest
//
//  Created by Bharath Varma K N on 05/02/24.
//

import UIKit

class MenuViewController: UIViewController {
    
    weak var navigationDelegate: SideMenuNavigationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pressedMenu(_ sender: Any) {
        navigationDelegate?.sideMenuClicked(atIndex: 0)
        self.dismiss(animated: true)
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
