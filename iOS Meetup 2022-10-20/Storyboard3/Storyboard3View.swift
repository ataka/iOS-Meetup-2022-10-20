//
//  Storyboard3View.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/14.
//

import SwiftUI
import UIKit

struct Storyboard3View: View {
    var body: some View {
        Storyboard3ViewControllerWrapper()
            .navigationTitle("Storyboard (strings)")
    }
}

struct Storyboard3ViewControllerWrapper: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> Storyboard3ViewController {
        UIStoryboard(name: "Storyboard3", bundle: nil).instantiateViewController(identifier: "storyboard3") {
            Storyboard3ViewController(coder: $0, dependency: ())
        }
    }

    func updateUIViewController(_ uiViewController: Storyboard3ViewController, context: Context) {
    }
}

struct Storyboard3View_Previews: PreviewProvider {
    static var previews: some View {
        Storyboard3View()
    }
}
