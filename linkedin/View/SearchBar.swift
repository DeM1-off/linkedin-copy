//
//  SearchBar.swift
//  linkedin
//
//  Created by Dmitro Dohryk on 22.05.2023.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(alignment: .center){
           
            Image("demo").resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 50,height: 50)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.blue.opacity(0.2))
                .frame(width: 270,height: 30)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Seach")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            Spacer()
                    }.padding()
                )
            // Message box
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30,height: 30)
        }.padding(.top)
       
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
