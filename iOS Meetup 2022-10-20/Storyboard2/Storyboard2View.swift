//
//  Storyboard2View.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/14.
//

import SwiftUI
import UIKit

struct Storyboard2View: View {
    var body: some View {
        Storyboard2ViewControllerWrapper()
            .navigationTitle("Storyboard (code)")
    }
}

struct Storyboard2ViewControllerWrapper: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> Storyboard2ViewController {
        UIStoryboard(name: "Storyboard2", bundle: nil).instantiateViewController(identifier: "storyboard2") {
            Storyboard2ViewController(coder: $0, dependency: 1)
        }
    }

    func updateUIViewController(_ uiViewController: Storyboard2ViewController, context: Context) {
    }
}

struct Storyboard2View_Previews: PreviewProvider {
    static var previews: some View {
        Storyboard2View()
    }
}
