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
        Plan(title: "plan_basic",
             priceValue: "plan_basic_price"),
        Plan(title: "plan_pro",
             priceValue: "plan_pro_price"),
    ]

    var body: some View {
        List {
            Section("upgrade") {
                ForEach(plans) { plan in
                    PlanView(plan: plan)
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
