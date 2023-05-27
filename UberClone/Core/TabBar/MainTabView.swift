//
//  MainTabView.swift
//  UberClone
//
//  Created by user239884 on 5/25/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem{
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload")
                .tabItem{
                    Image(systemName: "plus.square")
                }
            
            Text("Notifications")
                .tabItem{
                    Image(systemName: "heart")
                }
            
            ProfileView()
                .tabItem{
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
