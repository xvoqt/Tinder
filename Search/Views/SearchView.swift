//
//  SearchView.swift
//  Tinder
//
//  Created by Melanie Andrade-Muñoz on 4/19/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack(spacing: 0) {
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 88, alignment: .top)

            Text("For you")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text("Recommendations based on your profile")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(5)
                .cornerRadius(5)
                .padding(.horizontal, 5)
                .padding(.bottom, 5)
            
            
            ScrollView {
                Spacer()
                VStack(spacing: 20) {
                    
                    Text("Featured")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    
                    HStack(spacing: 20) {
                        // First pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=4K4wElOJjVI") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("together")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 350, height: 220)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                    }
                    
                    Text("New This Week")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    
                    HStack(spacing: 20) {
                        // First pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://tinder.com/feature/swipe") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text("Welcome to Tinder!")
                                        .font(.title2) // Adjust the font size and weight as needed.
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 5)
                                        .padding(.bottom, 5)
                                        .cornerRadius(5)
                                        .padding(.bottom, 5)
                                        .padding(.leading, 5)
                                }
                            }
                        }
                        
                        // Second pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=72KwKkUlpk8") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.2")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text("Reach out to Dating Experts")
                                        .font(.title2) // Adjust the font size and weight as needed.
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 5)
                                        .padding(.bottom, 5)
                                        .cornerRadius(5)
                                        .padding(.bottom, 5)
                                        .padding(.leading, 5)
                                }
                            }
                        }
                        // Add more pairs of images with buttons leading to different URLs as needed
                    }
                    
                    // Repeat the above HStack for each pair of images
                    // Add more pairs of images with buttons leading to different URLs as needed
                    
                    HStack(spacing: 20) {
                        // First pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=Qi_CcBX8YnI") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.3")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text("Cupid's Arrow")
                                        .font(.title2) // Adjust the font size and weight as needed.
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 5)
                                        .padding(.bottom, 5)
                                        .cornerRadius(5)
                                        .padding(.bottom, 5)
                                        .padding(.leading, 5)
                                }
                            }
                        }
                        
                        // Second pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=37lI299U1bA") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.4")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text("Starts with a Swipe")
                                        .font(.title2) // Adjust the font size and weight as needed.
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 5)
                                        .padding(.bottom, 5)
                                        .cornerRadius(5)
                                        .padding(.bottom, 5)
                                        .padding(.leading, 5)
                                }
                            }
                        }
                        // Add more pairs of images with buttons leading to different URLs as needed
                    }
                    
                    HStack(spacing: 20) {
                        // First pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=XIS3JkWdAjM") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.5")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                }
                            }
                        }
                        
                        // Second pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=mQQgTiX51f0") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.6")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                        // Add more pairs of images with buttons leading to different URLs as needed
                    }
                    
                    HStack(spacing: 20) {
                        // First pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=T0oxq4D7y_A") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.7")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text("Long-Distance Relationships")
                                        .font(.title2) // Adjust the font size and weight as needed.
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 5)
                                        .padding(.bottom, 5)
                                        .cornerRadius(5)
                                        .padding(.bottom, 5)
                                        .padding(.leading, 5)
                                }
                            }
                        }
                        
                        // Second pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=f08ky5asV44") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.8")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                        // Add more pairs of images with buttons leading to different URLs as needed
                    }
                    
                    HStack(spacing: 20) {
                        // First pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=3mYeUzpp6Rk") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.9")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text("Begin Swiping!")
                                        .font(.title2) // Adjust the font size and weight as needed.
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 5)
                                        .padding(.bottom, 5)
                                        .cornerRadius(5)
                                        .padding(.bottom, 5)
                                        .padding(.leading, 5)
                                }
                            }
                        }
                        
                        // Second pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=LA6XoiVN1tk") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.10")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text("Set your Preferences")
                                        .font(.title2) // Adjust the font size and weight as needed.
                                        .fontWeight(.light)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 5)
                                        .padding(.bottom, 5)
                                        .cornerRadius(5)
                                        .padding(.bottom, 5)
                                        .padding(.leading, 5)
                                }
                            }
                        }
                        // Add more pairs of images with buttons leading to different URLs as needed
                    }
                    
                    HStack(spacing: 20) {
                        // First pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=hf82z7Yq6N0") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.11")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                }
                            }
                        }
                        
                        // Second pair of images
                        VStack {
                            Button(action: {
                                if let url = URL(string: "https://www.youtube.com/watch?v=cUf2mJWYAck") {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                ZStack(alignment: .bottomLeading) {
                                    Image("tinder.12")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 180, height: 250)
                                        .clipped()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                        // Add more pairs of images with buttons leading to different URLs as needed
                    }
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 20)
            }
            .padding(.bottom, 20)
        }
        .padding(.horizontal, 20)
        .background(Color(.systemGroupedBackground).ignoresSafeArea())
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

