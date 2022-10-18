//
//  BranchView.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/18.
//

import SwiftUI

struct BranchView: View {
    let item: SampleItem
    let plans = [
        Plan(title: "Basic Plan",
             priceValue: "300 yen"),
        Plan(title: "Pro Plan",
             priceValue: "1,000 yen"),
    ]

    var body: some View {
        List {
            Section("Upgrade") {
                ForEach(plans) { plan in
                    HStack {
                        Text(plan.title)
                        Spacer()
                        Text(plan.priceValue)
                    }
                }
            }
        }
        .navigationTitle(item.title)
    }

}

struct BranchView_Previews: PreviewProvider {
    static var previews: some View {
        BranchView(item: SampleItem.makeDummy())
    }
}
