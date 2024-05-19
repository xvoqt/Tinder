//
//  NotiView.swift
//  Tinder
//
//  Created by Melanie Andrade-Muñoz on 4/19/24.
//

import SwiftUI

struct NotiView: View {
    static let tinderPink = Color(UIColor(red: 0.99, green: 0.16, blue: 0.48, alpha: 1.0))

    var body: some View {
        ZStack {
            Circle()
                .fill(Self.tinderPink) 
                .frame(width: 24, height: 24)

            Text("24")
                .foregroundColor(.white)
                .font(.system(size: 14, weight: .bold))
        }
    }
}

struct NotiView_Previews: PreviewProvider {
    static var previews: some View {
        NotiView()
    }
}
