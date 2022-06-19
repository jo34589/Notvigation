//
//  MyPageView.swift
//  Notvigation
//
//  Created by 엔나루 on 2022/06/19.
//

import SwiftUI

struct MyPageView: View {
    
    @ObservedObject var notvigation = Notvigation.shared
    
    var body: some View {
        VStack {
            Text("This is MyPageView")
                .padding()
            
            NavigationLink(isActive: $notvigation.isHomeViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isMyPageViewPresent = false
                notvigation.isHomeViewPresent = true
            }, label: {
                Text("Go to Home View")
                    .padding()
            })
            
            NavigationLink(isActive: $notvigation.isSearchViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isMyPageViewPresent = false
                notvigation.isSearchViewPresent = true
            }, label: {
                Text("Go to Search View")
                    .padding()
            })
            
            NavigationLink(isActive: $notvigation.isNoticeViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isMyPageViewPresent = false
                notvigation.isNoticeViewPresent = true
            }, label: {
                Text("Go to Notice View")
                    .padding()
            })
            
        }
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
