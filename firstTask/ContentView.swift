//
//  ContentView.swift
//  firstTask
//
//  Created by raghad zuhdie on 29/08/2024.
//

import SwiftUI

enum SegView: String {
    case about = "About", location = "Location", reviews = "Reviews"
}

struct SegButton: View {
    let id: SegView
   @Binding var selectedButton: SegView
    
    var body: some View {
        Button {
            selectedButton = id
            print(selectedButton)
        } label: {
            VStack {
                Text(id.rawValue)
                Divider()
                    .frame(height: 1)
                    .overlay(selectedButton == id ? .blue : .gray)
            }
        }
        .fontWeight(.bold)
        .foregroundStyle(selectedButton == id ? .blue : .gray)
    }
}

struct BottomView: View {
    var content: String = ""
    var body: some View {
            Text(content)
    }
}

struct ImageWithBorder: View {
    var imageName: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray, lineWidth: 1)
                .frame(width: 45, height: 45)
            Image(systemName: imageName)

        }
    }
}

struct ContentView: View {
    @State var selected: SegView = .about
    var body: some View {
        VStack {
            HStack {
                ImageWithBorder(imageName: "arrowshape.turn.up.left")
                Spacer()
                Text("Dr Randy Wigham")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                Spacer()
                ImageWithBorder(imageName: "list.dash")

            }.padding()
            profileSummary()
            HStack(spacing: 0) {
                    SegButton( id: .about, selectedButton: $selected)
                    SegButton( id: .location, selectedButton: $selected)
                    SegButton( id: .reviews, selectedButton: $selected)
                }
                .padding(.top, 20)
                .padding(15)
            BottomView(content: selected.rawValue)
        }
        Spacer()
    }
}

#Preview {
    ContentView(selected: .about)
}

