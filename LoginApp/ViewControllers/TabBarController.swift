//
//  TabBarController.swift
//  LoginApp
//
//  Created by Ирина on 21.11.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    var person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        tabBar.items![1].title = "\(person?.name ?? "") \(person?.surname ?? "")"
    }
}
