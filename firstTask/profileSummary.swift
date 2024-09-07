//
//  profileSummary.swift
//  firstTask
//
//  Created by raghad zuhdie on 29/08/2024.
//

import SwiftUI

struct profileSummary: View {
    var body: some View {
        
        HStack {
            Image("image2")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack(alignment: .leading, spacing: 15) {
                Text("Dr. Randy Wigham")
                    .fontWeight(.heavy)
                Text("General | RSUD Gatot Subroto")
                HStack {
                    Image(systemName: "heart.fill")
                    Text("4.8")
                        .foregroundStyle(.gray)
                    Text("(4,279 reviews)")
                        .foregroundStyle(.gray)
                }
        
            }
            Image(systemName: "square.and.pencil")
                .padding(.bottom, 60)
        }.padding(5)
    }
}

#Preview {
    profileSummary()
}
