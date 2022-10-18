//
//  SwiftUIView.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/12.
//

import SwiftUI

struct SwiftUIView: View {
    let item: SampleItem

    var body: some View {
        Text("hello_world")
            .navigationTitle(item.title)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(item: SampleItem.makeDummy())
    }
}
