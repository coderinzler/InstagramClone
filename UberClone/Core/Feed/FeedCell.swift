//
//  FeedCell.swift
//  UberClone
//
//  Created by user239884 on 5/26/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            HStack{
                // Image + Username
                
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("coderinzler")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
                
            }
            .padding(.leading, 8)
            
            // Post Image
            Image("feed-2")
                .resizable()
                .scaledToFill()
                .frame(height:400)
                .clipShape(Rectangle())
            
            
        
            
            // Action Buttons
            HStack(spacing: 16){
                Button{
                    print("Like post")
                }label:{
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button{
                    print("Comment on post")
                }label:{
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button{
                    print("Share post")
                }label:{
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            
            
            // Likes label
            
            
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top,1)
            
            // Caption label
            
            HStack{
                Text("coderinzler").fontWeight(.semibold) +
                Text("Some caption right here")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading,10)
            .font(.footnote)
            .padding(.top,1)
            
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,10)
                .padding(.top, 1)
                .foregroundColor(.gray)
            
            
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
