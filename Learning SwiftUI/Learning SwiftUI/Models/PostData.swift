//
//  PostData.swift
//  Learning SwiftUI
//
//  Created by Anindita's MacMini on 24/05/21.
//  Copyright © 2021 Abhishek_Sharma. All rights reserved.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}


struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    let author: String
}
