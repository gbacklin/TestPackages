//
//  NavigatorView.swift
//  TestPackages
//
//  Created by Gene Backlin on 7/12/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import SwiftUI

public struct NavigatorView: View {
    let colors = ["Red", "Green", "Blue"]
    
    public init() {
    }
    
    @available(iOS 13.0.0, *)
    public var body: some View {
        NavigationView {
            List(colors, id:\.self) {
                color in
                NavigationLink(destination: DetailView(color: color)) {
                    Text(color).padding()
                }
            }
            .navigationBarTitle("Colors")
        }
    }
}

struct NavigatorView_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    static var previews: some View {
        NavigatorView()
    }
}
