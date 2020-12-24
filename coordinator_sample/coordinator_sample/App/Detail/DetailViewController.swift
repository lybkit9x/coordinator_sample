//
//  DetailViewController.swift
//  coordinator_sample
//
//  Created by Tran Van Tien on R 2/12/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!

    var viewModel: DetailViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let viewModel = viewModel else { return }
        messageLabel.text = viewModel.anime
        let random: CGFloat = CGFloat.random(in: 0...255)
        view.backgroundColor = UIColor(displayP3Red: random / 255, green: random / 255, blue: random / 255, alpha: random / 255)
    }
}
