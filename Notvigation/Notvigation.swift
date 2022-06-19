//
//  Notvigation.swift
//  Notvigation
//
//  Created by 엔나루 on 2022/06/19.
//

import Foundation
import UIKit
import SwiftUI

class Notvigation: ObservableObject {
    
    static let shared = Notvigation()
    
    @Published var isHomeViewPresent: Bool
    @Published var isSearchViewPresent: Bool
    @Published var isMyPageViewPresent: Bool
    @Published var isNoticeViewPresent: Bool
    
    init() {
        self.isHomeViewPresent = true
        self.isSearchViewPresent = false
        self.isMyPageViewPresent = false
        self.isNoticeViewPresent = false
    }
    
    func nextView() -> AnyView {
        if isHomeViewPresent {
            return AnyView(HomeView())
        } else if isSearchViewPresent {
            return AnyView(SearchView())
        } else if isMyPageViewPresent {
            return AnyView(MyPageView())
        } else if isNoticeViewPresent {
            return AnyView(NoticeView())
        } else {
            return AnyView(EmptyView())
        }
    }
}
