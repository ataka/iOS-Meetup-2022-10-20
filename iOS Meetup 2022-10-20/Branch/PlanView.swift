//
//  PlanView.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/18.
//

import SwiftUI

struct PlanView: View {
    let plan: Plan

    var body: some View {
        HStack {
            Text(plan.title)
            Spacer()
            Text(plan.priceValue)
        }
    }
}

struct PlanView_Previews: PreviewProvider {
    static var previews: some View {
        PlanView(plan: Plan(title: "My Plan", priceValue: "2,000 yen"))
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
