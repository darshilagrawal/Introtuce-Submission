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
    
        
        let firstPage=displayViewController(view: RegisterViewController(), name:"Enroll", imageName: "plus.circle.fill")
        let secondPage=displayViewController(view: ViewController(), name:"Users", imageName: "person.circle.fill")
        
        
    viewControllers=[firstPage,secondPage]
        
    }
    
    func displayViewController(view:UIViewController,name:String,imageName:String) -> UINavigationController{
        view.navigationItem.title=name
        let navigationController=UINavigationController(rootViewController: view)
        navigationController.title=name
        navigationController.tabBarItem.image=UIImage(systemName: imageName)
        return navigationController
    }
    
}
