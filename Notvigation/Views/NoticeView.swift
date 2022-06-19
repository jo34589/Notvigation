//
//  NoticeView.swift
//  Notvigation
//
//  Created by 엔나루 on 2022/06/19.
//

import SwiftUI

struct NoticeView: View {
    
    @ObservedObject var notvigation = Notvigation.shared
    
    var body: some View {
        VStack {
            Text("This is Notice View")
                .padding()
            
            NavigationLink(isActive: $notvigation.isHomeViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isNoticeViewPresent = false
                notvigation.isHomeViewPresent = true
            }, label: {
                Text("Go to Home View")
                    .padding()
            })
            
            NavigationLink(isActive: $notvigation.isSearchViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isNoticeViewPresent = false
                notvigation.isSearchViewPresent = true
            }, label: {
                Text("Go to Search View")
                    .padding()
            })
            
            NavigationLink(isActive: $notvigation.isMyPageViewPresent,
                           destination: { notvigation.nextView() },
                           label: { EmptyView() })
            Button(action: {
                notvigation.isNoticeViewPresent = false
                notvigation.isMyPageViewPresent = true
            }, label: {
                Text("Go to Notice View")
                    .padding()
            })
        }
    }
}

struct NoticeView_Previews: PreviewProvider {
    static var previews: some View {
        NoticeView()
    }
}
