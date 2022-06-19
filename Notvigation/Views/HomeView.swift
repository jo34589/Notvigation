//
//  HomeView.swift
//  Notvigation
//
//  Created by 엔나루 on 2022/06/19.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var notvigation = Notvigation.shared
    
    var body: some View {
        VStack {
            Text("This is Home View")
                .padding()
            
            NavigationLink(isActive: $notvigation.isSearchViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isHomeViewPresent = false
                notvigation.isSearchViewPresent = true
            }, label: {
                Text("Go to Search View")
                    .padding()
            })
    
            NavigationLink(isActive: $notvigation.isMyPageViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isHomeViewPresent = false
                notvigation.isMyPageViewPresent = true
            }, label: {
                Text("Go to MyPage View")
                    .padding()
            })
            
            NavigationLink(isActive: $notvigation.isNoticeViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isHomeViewPresent = false
                notvigation.isNoticeViewPresent = true
            }, label: {
                Text("Go to Notice View")
                    .padding()
            })
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
