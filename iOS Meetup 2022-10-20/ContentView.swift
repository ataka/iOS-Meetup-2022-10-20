//
//  ContentView.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/12.
//

import SwiftUI

struct ContentView: View {
    let items: [SampleItem] = [
        SampleItem(id: 0, title: "SwiftUI"),
        SampleItem(id: 1, title: "Storyboard (not localized)"),
        SampleItem(id: 2, title: "Storyboard (localized)"),
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        SwiftUIView()
                    } label: {
                        Text(item.title)
                    }
                }
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
