//
//  HomeView.swift
//  NetflixUI
//
//  Created by Patricia Obregon on 7/29/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView {
                ZStack {
                    
                    Image("theOffice1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                             .frame(width: 400, height: 500, alignment: .trailing)
                        // fade black Top and Bottom
                        .mask(LinearGradient(
                                gradient: Gradient(colors: [Color.clear, Color.black]),
                                startPoint: .top,
                            endPoint: .center
                        ))
                        .mask(LinearGradient(
                                gradient: Gradient(colors: [Color.clear, Color.black]),
                                startPoint: .bottom,
                                endPoint: .center
                        ))
                        
                        
                    VStack {
                        //MARK: Line 1
                        HStack (spacing: 30){
                            Image("d")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                            
                            Image(systemName: "airplayvideo")
                                .foregroundColor(.white)
                            Image("2b")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.horizontal)
                        
                        //MARK: Line 2
                        HStack (spacing:20){
                            Text("TV Shows")
                            Text("Movies")
                            
                            Text("Categories")
                            Image(systemName: "arrowtriangle.down.fill")
                                .frame(width: 15, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        
                        Spacer()
                        
                        //MARK: Line 3
                        HStack (spacing: 55){
                            VStack {
                                Image(systemName: "plus")
                                Text("My List")
                            }
                            .foregroundColor(.white)
                            
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 75, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(5)
                                
                                HStack {
                                    Image(systemName: "play.fill")
                                    Text("Play")
                                }
                                .padding()
                                
                            }
                            
                            VStack {
                                Image(systemName: "info.circle")
                                Text("info")
                            }
                            .foregroundColor(.white)
                            
                        }
                    }
                    .padding(.top, 50)
                }
                
                //MARK: My List
                //MyList()
                VStack (alignment: .leading) {
                    Text("My List")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    ScrollView (.horizontal) {
                        HStack (spacing: 10) {
                            ForEach(1..<8) { i in
                                Image("\(i)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(10)
                                    .frame(width: 110, height: 160, alignment: .leading)
                            }
                        }
                    }
                }
                .padding(.leading)
                
                //MARK: Continue
                //ContinueWatching()
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
                                    .cornerRadius(10)
                                    .frame(width: 110, height: 160, alignment: .leading)
                            }
                        }
                    }
                }
                .padding(.leading)
                
                //MARK: Popular
                //Popular()
                VStack (alignment: .leading) {
                    Text("Popular on Netflix")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    ScrollView (.horizontal) {
                        HStack (spacing: 10) {
                            ForEach(8..<15) { i in
                                Image("\(i)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(10)
                                    .frame(width: 110, height: 160, alignment: .leading)
                            }
                        }
                    }
                }
                .padding(.leading)
                
                //MARK: Trending
                //Trending()
                VStack (alignment: .leading) {
                  Text("Trending Now")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.white)
                    
                    ScrollView (.horizontal) {
                        HStack (spacing: 10) {
                            ForEach(14..<21) { i in
                                Image("\(i)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(10)
                                    .frame(width: 110, height: 160, alignment: .leading)
                            }
                        }
                    }
                }
                .padding(.leading)
            }
            .ignoresSafeArea()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
