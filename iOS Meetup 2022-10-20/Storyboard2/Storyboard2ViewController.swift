//
//  Storyboard2ViewController.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/14.
//

import UIKit

final class Storyboard2ViewController: UIViewController {
    @IBOutlet var helloLabel: UILabel! {
        didSet {
            helloLabel.text = NSLocalizedString("hello_world", comment: "Hello, World!")
        }
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    init?(coder: NSCoder, dependency: Int) {
        super.init(coder: coder)
    }
}
