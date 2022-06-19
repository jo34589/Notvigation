//
//  SearchView.swift
//  Notvigation
//
//  Created by 엔나루 on 2022/06/19.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var notvigation = Notvigation.shared
    
    var body: some View {
        VStack {
            Text("This is Search View")
                .padding()
            
            NavigationLink(isActive: $notvigation.isHomeViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isSearchViewPresent = false
                notvigation.isHomeViewPresent = true
            }, label: {
                Text("Go to Home View")
                    .padding()
            })
            
            NavigationLink(isActive: $notvigation.isMyPageViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isSearchViewPresent = false
                notvigation.isMyPageViewPresent = true
            }, label: {
                Text("Go to MyPage View")
                    .padding()
            })
            
            NavigationLink(isActive: $notvigation.isNoticeViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isSearchViewPresent = false
                notvigation.isNoticeViewPresent = true
            }, label: {
                Text("Go to Notice View")
                    .padding()
            })
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
