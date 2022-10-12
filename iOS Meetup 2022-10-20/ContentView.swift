//
//  ContentView.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("SwiftUI")
                Text("Storyboard (not localized)")
                Text("Storyboard (localized)")
            }
            .navigationTitle("iOS Meetup")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
