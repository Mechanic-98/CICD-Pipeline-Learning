//
//  DetailView.swift
//  Learning SwiftUI
//
//  Created by Anindita's MacMini on 24/05/21.
//  Copyright © 2021 Abhishek_Sharma. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


