//
//  MockData.swift
//  Tinder
//
//  Created by Melanie Andrade-Muñoz on 4/15/24.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Mitchell Anderson",
                age: 19,
                bio: "i <3 ryder",
                profileImageURLs: ["mit", "mit.2"],
                gender: "Male",
                occupation: "Luminary",
                sexuality: "Straight",
                msg: "Do you have a name, or can I call you mine?"
            ),
        
                .init(
                    id: NSUUID().uuidString,
                    fullname: "Ben Chesser",
                    age: 19,
                    bio: "Let my mustache hypnotize you",
                    profileImageURLs: ["ben", "ben.2"],
                    gender: "Male",
                    occupation: "iOS Apprenticeship",
                    sexuality: "Straight",
                    msg: "Are you Australian? Because when I look at you, I feel like I'm down under."
                ),
            
                .init(
                    id: NSUUID().uuidString,
                    fullname: "Savv Lin",
                    age: 19,
                    bio: "I'm choosing happiness",
                    profileImageURLs: ["savv", "savv.2", "savv.3"],
                    gender: "Female",
                    occupation: "iOS Academy",
                    sexuality: "Lesbian",
                    msg: "Do you have a name, or can I call you mine?"
                ),
            
                .init(
                    id: NSUUID().uuidString,
                    fullname: "Max Nabokow",
                    age: 23,
                    bio: "Taco Bell: 3/10",
                    profileImageURLs: ["max", "max.2"],
                    gender: "Male",
                    occupation: "Chief Technology Officer",
                    sexuality: "Straight",
                    msg: "Are you a banana? Because I find you a-peeling."
                    
                    ),
            
            .init(
                id: NSUUID().uuidString,
                fullname: "Alec Nipp",
                age: 21,
                bio: "I love eating ramen from bean cans",
                profileImageURLs: ["alec", "alec.2", "alec.3"],
                gender: "Male",
                occupation: "Chief Executive Officer",
                sexuality: "Straight",
                msg: "Are you made of copper and tellurium? Because you're Cu-Te."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Ciya Joseph",
                age: 20,
                bio: "APP TEAM PRINCESS",
                profileImageURLs: ["ciya", "ciya.2", "ciya.3"],
                gender: "Female",
                occupation: "Chief Operating Officer",
                sexuality: "Straight",
                msg: "Do you have a sunburn, or are you always this hot?"
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Vidya Ramesh",
                age: 19,
                bio: "omwtfyb",
                profileImageURLs: ["vidya", "vidya.2"],
                gender: "Female",
                occupation: "iOS Academy",
                sexuality: "Straight",
                msg: "Hiiii!"
            ),
            
            .init(
                id: NSUUID().uuidString,
                fullname: "Morgan Roberts",
                age: 23,
                bio: "my eyes are prettier than yours",
                profileImageURLs: ["morgan", "morgan.2"],
                gender: "Female",
                occupation: "Chief Design Officer",
                sexuality: "Straight",
                msg: "Do you have a map? I keep getting lost in your eyes."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Mackenzie Perry",
                age: 22,
                bio: "I'm pretty as FUCK",
                profileImageURLs: ["mac", "mac.2", "mac.3"],
                gender: "Female",
                occupation: "Model",
                sexuality: "Straight",
                msg: "Is your name Wi-fi? Because I'm feeling a connection."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Sarah Crowder",
                age: 19,
                bio: "i threw the shoe",
                profileImageURLs: ["sarah", "sarah.2"],
                gender: "Female",
                occupation: "Luminary",
                sexuality: "Straight",
                msg: "Excuse me, but I think you dropped something: my jaw."
            ),
        
            
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Rodrigo Roque-Hernandez",
                age: 19,
                bio: "donde esta mi hombre",
                profileImageURLs: ["rodri", "rodri.2", "rodri.3"],
                gender: "Male",
                occupation: "UI/UX Academy",
                sexuality: "Gay",
                msg: "If looks could kill, you'd be a weapon of mass destruction."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Alex Escheid",
                age: 22,
                bio: "GO DOWNLOAD DAYSY",
                profileImageURLs: ["alex", "alex.2", "alex.3"],
                gender: "Male",
                occupation: "Bubbly/Cupboard",
                sexuality: "Straight",
                msg: "Are you a parking ticket? Because you've got 'FINE' written all over you."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Meghan Sun",
                age: 21,
                bio: "a bright encounter",
                profileImageURLs: ["meghan", "meghan.2"],
                gender: "Female",
                occupation: "Luminary",
                sexuality: "Straight",
                msg: "Do you believe in love at first sight, or should I walk by again?"
            ),
        
    
            .init(
                id: NSUUID().uuidString,
                fullname: "Kavya Subramanian",
                age: 21,
                bio: "mwah",
                profileImageURLs: ["kavya", "kavya.2"],
                gender: "Female",
                occupation: "UI/UX Apprenticeship",
                sexuality: "Straight",
                msg: "Are you a campfire? Because you're hot and I want s'more."
            ),
    
            
            .init(
                id: NSUUID().uuidString,
                fullname: "Sam Shi",
                age: 23,
                bio: "the best man to walk earth",
                profileImageURLs: ["sam", "sam.2"],
                gender: "Male",
                occupation: "Chief Learning Officer",
                sexuality: "Straight",
                msg: "If you were a vegetable, you'd be a cute-cumber."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Alexandra Marum",
                age: 20,
                bio: "pass me the wood",
                profileImageURLs: ["alexandra", "alexandra.2"],
                gender: "Female",
                occupation: "Boss ass  bitch",
                sexuality: "Lesbian",
                msg: "Do you have a Band-Aid? Because I just scraped my knee falling for you."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Chase Allen",
                age: 25,
                bio: "#appteamalum",
                profileImageURLs: ["chase", "chase.2"],
                gender: "Male",
                occupation: "Not here",
                sexuality: "Staight",
                msg: "Excuse me, but I think you owe me a drink. When I looked at you, I dropped mine."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Chethana Madireddy",
                age: 20,
                bio: "i love long walks on the beach & taking photos of frogs",
                profileImageURLs: ["che", "che.2", "che.3"],
                gender: "Female",
                occupation: "professional hazard",
                sexuality: "Questioning",
                msg: "Are you a magician? Because whenever I look at you, everyone else disappears."
                
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Bonnie Zhang",
                age: 19,
                bio: "boom it's bonnie",
                profileImageURLs: ["bon", "bon.2", "bon.3"],
                gender: "Female",
                occupation: "Luminary",
                sexuality: "Straight",
                msg: "Is your name Google? Because you have everything I've been searching for."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Shanly Vong",
                age: 20,
                bio: "GIRLS WHO CODE",
                profileImageURLs: ["shan", "shan.2", "shan.3"],
                gender: "Female",
                occupation: "Girls Who Code",
                sexuality: "Straight",
                msg: "Are you a bank loan? Because you have my interest."
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Bamba Diouf",
                age: 22,
                bio: "I'm so small and petite",
                profileImageURLs: ["bamba", "bamba.2"],
                gender: "Male",
                occupation: "PORCH",
                sexuality: "Straight",
                msg: "Do you like Star Wars? Because Yoda one for me!"
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Jacob Brown",
                age: 21,
                bio: "I'm addicted to gambling",
                profileImageURLs: ["jacob", "jacob.2", "jacob.3"],
                gender: "Male",
                occupation: "iOS Academy Team Lead",
                sexuality: "Straight",
                msg: "Are you a beaver? Because daaaaam"
                ),
            
            .init(
                id: NSUUID().uuidString,
                fullname: "Ryder Klein",
                age: 21,
                bio: "I broke my finger",
                profileImageURLs: ["ryd", "ryd.2", "ryd.3"],
                gender: "Male",
                occupation: "Bubbly/Cupboard",
                sexuality: "Straight",
                msg: "Are you made of grapes? Because you're wine-derful"
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Kush Shah",
                age: 21,
                bio: "Make it count",
                profileImageURLs: ["kush", "kush.2", "kush.3"],
                gender: "Male",
                occupation: "Centible",
                sexuality: "Straight",
                msg: "Are you a cat? Because you're purrfect."
            ),
        
            
            .init(
                id: NSUUID().uuidString,
                fullname: "Gabrielle Stewart",
                age: 19,
                bio: "better than you since 2004",
                profileImageURLs: ["gab", "gab.2", "gab.3"],
                gender: "Female",
                occupation: "iOS Academy",
                sexuality: "Straight",
                msg: "If beauty were a crime, you'd be serving a life sentence."
                
            ),
        
            .init(
                id: NSUUID().uuidString,
                fullname: "Olivia Hammond",
                age: 19,
                bio: "There will be no fighting, in a river full of dreams",
                profileImageURLs: ["olivia", "olivia.2", "olivia.3"],
                gender: "Female",
                occupation: "UI/UX Apprenticeship",
                sexuality: "Straight",
                msg: "Do you have a map? Because I keep getting lost in your eyes."
            ),
            
            .init(
                id: NSUUID().uuidString,
                fullname: "Mel da Mane",
                age: 18,
                bio: "fuck bitches get money",
                profileImageURLs: ["mel", "mel.2", "mel.3"],
                gender: "Female",
                occupation: "Chief People Officer",
                sexuality: "Bisexual",
                msg: "RAHHHHHHH"
            )
    ]
}
