//
//  WebView.swift
//  Learning SwiftUI
//
//  Created by Anindita's MacMini on 24/05/21.
//  Copyright © 2021 Abhishek_Sharma. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        } else {
            uiView.stopLoading()
        }
    }
}
