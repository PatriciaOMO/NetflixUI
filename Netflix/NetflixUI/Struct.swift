//
//  Struct.swift
//  NetflixUI
//
//  Created by Patricia Obregon on 7/29/21.
//

import SwiftUI

struct Struct: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MyList: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("My List")
                .bold()
                .font(.title2)
                .foregroundColor(.white)
            
            ScrollView (.horizontal) {
                HStack (spacing: 10) {
                    ForEach(1..<6) { i in
                        Image("\(i)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .frame(width: 100, height: 150, alignment: .leading)
                    }
                }
            }
        }
        .padding(.leading)
    }
}

struct ContinueWatching: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Continue Watching")
                .bold()
                .font(.title2)
                .foregroundColor(.white)
            
            ScrollView (.horizontal) {
                HStack {
                    ForEach(1..<4) { i in
                        Image("\(i)" + "c")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                            .frame(width: 200, height: 200, alignment: .leading)
                    }
                }
            }
        }
        .padding(.leading)
    }
}

struct Popular: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Popular on Netflix")
                .bold()
                .font(.title2)
                .foregroundColor(.white)
            
            ScrollView (.horizontal) {
                HStack {
                    ForEach(6..<11) { i in
                        Image("\(i)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(20)
                            .frame(width: 150, height: 200, alignment: .leading)
                    }
                }
            }
        }
        .padding(.leading)
    }
}

struct Trending: View {
    var body: some View {
        VStack (alignment: .leading) {
          Text("Trending Now")
            .bold()
            .font(.title2)
            .foregroundColor(.white)
            
            ScrollView (.horizontal) {
                HStack {
                    ForEach(11..<15) { i in
                        Image("\(i)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(20)
                            .frame(width: 150, height: 200, alignment: .leading)
                    }
                }
            }
        }
        .padding(.leading)
    }
}
struct Struct_Previews: PreviewProvider {
    static var previews: some View {
        Struct()
    }
}
