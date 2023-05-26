//
//  ProfileView.swift
//  UberClone
//
//  Created by user239884 on 5/25/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            //Header
            VStack{
                // pictures and stats
                HStack{
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8){
                        VStack{
                            Text("10")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Posts")
                                .font(.footnote)
                        }.frame(width: 78)
                        
                        VStack{
                            Text("331")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Followers")
                                .font(.footnote)
                        }.frame(width: 78)
                        
                        VStack{
                            Text("853")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Following")
                                .font(.footnote)
                        }.frame(width: 78)
                        
                    }
                }
                .padding(.horizontal)
                .padding()
                
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
            
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
