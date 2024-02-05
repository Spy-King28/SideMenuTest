//
//  CustomViewController.swift
//  SideMenuTest
//
//  Created by Bharath Varma K N on 05/02/24.
//

import UIKit

class CustomViewController: UIViewController, SideMenuNavigationDelegate {
    
    func sideMenuClicked(atIndex: Int) {
        clickedOnItem(item: atIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func showSideMenuController(delegate: SideMenuNavigationDelegate) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let menuController = storyBoard.instantiateViewController(identifier: "MenuViewController") as? MenuViewController else { return }
        menuController.navigationDelegate = delegate
        let menu = CustomSideMenuController(rootViewController: menuController)
        menu.leftSide = true
        present(menu, animated: true, completion: nil)
    }
    
    func clickedOnItem(item: Int) {
        
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
