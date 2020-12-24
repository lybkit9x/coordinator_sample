//
//  ACoordinator.swift
//  coordinator_sample
//
//  Created by Tran Van Tien on R 2/12/24.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {

    var rootViewController: UINavigationController!
    var detailViewCoordinator: DetailCoordinator!

    func start() -> UIViewController {
        let homeVC = HomeViewController()
        rootViewController = UINavigationController(rootViewController: homeVC)
        let homeViewModel = HomeViewModel()
        homeViewModel.coordinatorDelegate = self
        homeVC.viewModel = homeViewModel
        return rootViewController
    }
}

extension HomeCoordinator: HomeViewModelCoordinatorDelegate {
    func didTapOnRow(with anime: String) {
        detailViewCoordinator = DetailCoordinator(navigationController: rootViewController, anime: anime)
        let detailVC = detailViewCoordinator.start()
        rootViewController.pushViewController(detailVC, animated: true)
    }
}
