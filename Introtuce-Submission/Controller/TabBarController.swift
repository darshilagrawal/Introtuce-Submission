//
//  TabBarController.swift
//  Introtuce-Submission
//
//  Created by Darshil Agrawal on 09/05/21.
//

import UIKit

class TabBarController:UITabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
    let firstPage=displayViewController(view: RegisterViewController(), name: "Enroll")
        
    let secondPage=displayViewController(view: ViewController(), name: "Users")
        
    viewControllers=[firstPage,secondPage]
        
    }
    
    func displayViewController(view:UIViewController,name:String) -> UINavigationController{
        view.navigationItem.title="Demo Application"
        let navigationController=UINavigationController(rootViewController: view)
        navigationController.title=name
        return navigationController
    }
    
}
