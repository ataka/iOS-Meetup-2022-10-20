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
        SampleItem(id: 1, title: "Storyboard (raw key)"),
        SampleItem(id: 2, title: "Storyboard (code)"),
        SampleItem(id: 3, title: "Storyboard (storyboard)")
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    NavigationLink {
                        switch item.id {
                        case 0: SwiftUIView(item: item)
                        case 1: Storyboard1View(item: item)
                        case 2: Storyboard2View(item: item)
                        case 3: Storyboard3View(item: item)
                        default:
                            fatalError()
                        }
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
