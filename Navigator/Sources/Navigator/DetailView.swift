//
//  DetailView.swift
//  TestPackages
//
//  Created by Gene Backlin on 7/12/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let color: String
    
    @available(iOS 13.0, *)
    var body: some View {
        Text(color).padding()
            .navigationBarTitle(Text(color), displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    @available(iOS 13.0, *)
    static var previews: some View {
        DetailView(color: "Red")
    }
}
