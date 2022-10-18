//
//  SampleItem.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/12.
//

import Foundation

struct SampleItem: Identifiable {
    let id: Int
    let title: String

    static func makeDummy() -> Self {
        SampleItem(id: 0, title: "Dummy Title")
    }
}
