//
//  TabController.swift
//  Task2
//
//  Created by Tyler on 2/9/21.
//

import UIKit

class TabController:UITabBarController{
    
    override func viewDidLoad() {
        let nav1 = generateNavController(vc: ViewController(), title: "Bar")
        let nav2 = generateNavController(vc: SecondViewController(), title: "Line")
        let nav3 = generateNavController(vc: ThirdViewController(), title: "Pie")
        
        UINavigationBar.appearance().prefersLargeTitles = true
        
        viewControllers = [nav1, nav2, nav3]
    }
    
    fileprivate func generateNavController(vc: UIViewController, title: String)->
    UINavigationController{
        vc.navigationItem.title = title
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        return navController
    }
    
}
