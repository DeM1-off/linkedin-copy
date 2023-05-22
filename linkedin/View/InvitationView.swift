//
//  InvitationView.swift
//  linkedin
//
//  Created by Dmitro Dohryk on 22.05.2023.
//

import SwiftUI

let sampleData = NewtworkModel(id: 1, name: "Rahul Singh", position: "SDE at Amazon", mutual: 12, image: "01")

struct InvitationView: View {
    var Data: NewtworkModel

    var body: some View {

        HStack(alignment: .center,spacing: 10){
            Image(Data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame( width: 70,height: 70,alignment: .leading)
            
            VStack(alignment: .leading) {
                Text(Data.name)
                    .font(.body)
                Text(Data.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("\(Data.mutual) manual connections")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(width: 150,height: 20, alignment: .leading)
            
            HStack{
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
            
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue)
            }.padding(.horizontal)
        }.frame(width: .infinity,height: .infinity)
            .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(Data: sampleData)
    }
}
