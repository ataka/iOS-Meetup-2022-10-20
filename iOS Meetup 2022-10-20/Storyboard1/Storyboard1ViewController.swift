//
//  Storyboard1ViewController.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/12.
//

import UIKit

final class Storyboard1ViewController: UIViewController {

    required init?(coder: NSCoder) {
        fatalError()
    }

    init?(coder: NSCoder, dependency: Int) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
}
