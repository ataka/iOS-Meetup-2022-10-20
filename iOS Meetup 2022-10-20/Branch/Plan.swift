//
//  Plan.swift
//  iOS Meetup 2022-10-20
//
//  Created by 安宅正之 on 2022/10/18.
//

import Foundation
import SwiftUI

struct Plan: Identifiable {
    let id = UUID()
    let title: LocalizedStringKey
    let priceValue: LocalizedStringKey
}
