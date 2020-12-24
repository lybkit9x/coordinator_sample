//
//  AViewModel.swift
//  coordinator_sample
//
//  Created by Tran Van Tien on R 2/12/24.
//

import Foundation

protocol HomeViewModelCoordinatorDelegate: class {
    func didTapOnRow(with anime: String)
}

class HomeViewModel {

    init() {
        listAnime = ["Naruto", "Luffy", "One Piece",
                       "Death Note", "Death Click", "J2Team"]
    }

    var listAnime: [String]
    
    var title: String {
        return "Top Anime"
    }

    weak var coordinatorDelegate: HomeViewModelCoordinatorDelegate?

    func didTapOnAnime(of index: Int) {
        coordinatorDelegate?.didTapOnRow(with: listAnime[index])
    }

    func heightForRow(at index: Int, of section: Int) -> Int {
        return 60
    }

    func numberOfRowsInSection(section: Int) -> Int {
        return listAnime.count
    }

    func getAnimeName(at index: Int) -> String {
        return listAnime[index]
    }
}
