//
//  ContentView.swift
//  Learning SwiftUI
//
//  Created by Anindita's MacMini on 24/05/21.
//  Copyright © 2021 Abhishek_Sharma. All rights reserved.
//

import SwiftUI


//struct ContentView: View {
//
//    @ObservedObject var networkManager = NetworkManager()
//
//    var body: some View {
//
//        NavigationView {
//            List(networkManager.posts) { post -> View in
//                if post.url = nil {
//                    HStack {
//                        Text(String(post.points))
//                        Text(post.title)
//                    }
//                }
//                NavigationLink(destination: DetailView(url: post.url)) {
//                    HStack {
//                        Text(String(post.points))
//                        Text(post.title)
//                    }
//                }
//
//            }
//            .navigationBarTitle("Coding News")
//        }
//        .onAppear {
//            self.networkManager.fetchData()
//        }
//
//    }
//}

struct ContentView: View {

    @ObservedObject var networkManager = NetworkManager()

    var body: some View {

        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Spacer(minLength: 3.0)
                        VStack(alignment: .leading) {
                            Text(post.title)
                            Spacer()
                            Text("Author: \(post.author)")
                        }

                    }
                }

            }
            .navigationBarTitle("Coding News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

