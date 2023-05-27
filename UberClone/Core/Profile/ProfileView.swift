//
//  ProfileView.swift
//  UberClone
//
//  Created by user239884 on 5/25/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack{
            ScrollView{
                //Header
                VStack(spacing: 10){
                    // pictures and stats
                    HStack{
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8){
                            UserStatView(value: 12, title: "Posts")
                            UserStatView(value: 365, title: "Followers")
                            UserStatView(value: 543, title: "Following")
                            
                        }
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4){
                        Text("Lorenzo Navarro")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Building the Grid")
                            .font(.footnote)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    
                    Button{
                        
                    } label: {
                        Text("Edit profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 363, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6) .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    Divider()
                }
                //Post Grid View
                
                LazyVGrid(columns: gridItems, spacing: 2){
                    ForEach(0 ... 14, id: \.self) { index in
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("The Grid")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
