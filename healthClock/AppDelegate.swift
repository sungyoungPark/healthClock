//
//  AppDelegate.swift
//  healthClock
//
//  Created by 박성영 on 2021/12/11.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        let mainViewController = RoutineViewController() // 맨 처음 보여줄 ViewController

        let navigationController = UINavigationController(rootViewController: mainViewController) // 내비게이션 컨트롤러에 처음으로 보여질 화면을 rootView로 지정해주고!

        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }


}

