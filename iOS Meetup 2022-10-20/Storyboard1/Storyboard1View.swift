//
//  Storyboard1View.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/12.
//

import SwiftUI
import UIKit

struct Storyboard1View: View {
    let item: SampleItem

    var body: some View {
        Storyboard1ViewControllerWrapper()
            .navigationTitle(item.title)
    }
}

struct Storyboard1ViewControllerWrapper: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> Storyboard1ViewController {
        UIStoryboard(name: "Storyboard1", bundle: nil).instantiateViewController(identifier: "storyboard1") {
            Storyboard1ViewController(coder: $0, dependency: 1)
        }
    }

    func updateUIViewController(_ uiViewController: Storyboard1ViewController, context: Context) {
    }
}

struct Storyboard1View_Previews: PreviewProvider {
    static var previews: some View {
        Storyboard1View(item: SampleItem.makeDummy())
    }
}
