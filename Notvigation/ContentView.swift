//
//  ContentView.swift
//  Notvigation
//
//  Created by 엔나루 on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HomeView()
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
