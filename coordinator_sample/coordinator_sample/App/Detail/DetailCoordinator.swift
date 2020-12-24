//
//  BCoordinator.swift
//  coordinator_sample
//
//  Created by Tran Van Tien on R 2/12/24.
//

import Foundation
import UIKit

class DetailCoordinator: Coordinator {

    let navigationController: UINavigationController
    let anime: String

    init(navigationController: UINavigationController, anime: String) {
        self.navigationController = navigationController
        self.anime = anime
    }

    func start() -> UIViewController {
        let detailVC = DetailViewController()
        let viewModel = DetailViewModel(anime: anime)
        detailVC.viewModel = viewModel
        return detailVC
    }
}
