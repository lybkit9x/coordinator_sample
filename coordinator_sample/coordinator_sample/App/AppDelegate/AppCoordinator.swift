//
//  AppCoordinator.swift
//  coordinator_sample
//
//  Created by Tran Van Tien on R 2/12/23.
//

import UIKit

import UIKit

final class AppCoordinator: Coordinator {

    private var window: UIWindow?

    init(window: UIWindow) {
        self.window = window
    }
    var homeCoordinator: HomeCoordinator!

    @discardableResult
    func start() -> UIViewController {
        homeCoordinator = HomeCoordinator()
        let mainVC = homeCoordinator.start()
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        return mainVC
    }
}
