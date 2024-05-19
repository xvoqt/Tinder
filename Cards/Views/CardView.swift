//
//  CardView.swift
//  Tinder
//
//  Created by Mel Andrade-Muñoz on 4/15/24.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var matchManager: MatchManager
    @ObservedObject var viewModel: CardsViewModel
    
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var currentImageIndex = 0
    @State private var showProfileModal = false
    


    let model: CardModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(user.profileImageURLs[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: imageCount)
                    }
                
                CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: imageCount)
                
                SwipeActionIndicatorView(xOffset: $xOffset)
            }
            
            UserInfoView(showProfileModal: $showProfileModal, user: user)
        }
        .fullScreenCover(isPresented: $showProfileModal) {
            UserProfileView(user: user)
        }
        .onReceive(viewModel.$buttonSwipeAction, perform: { action in
            onRecieveSwiceAction(action)
        })
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
            
        )
    }
}

private extension CardView {
    var user: User {
        return model.user
    }
    
    var imageCount: Int {
        return user.profileImageURLs.count
    }
}

private extension CardView {
    func returnToCenter() {
        xOffset = 0
        degrees = 0
    }
    
    func swipeRight() {
        withAnimation {
            xOffset = 500
            degrees = 12
        } completion: {
            viewModel.removeCard(model)
            matchManager.checkForMatch(withUser: user)
        }
    }

    func swipeLeft() {
        withAnimation {
            xOffset = -500
            degrees = -12
        } completion: {
            viewModel.removeCard(model)
        }
    }
    
    func onRecieveSwiceAction(_ action:SwipeAction?) {
        guard let action else { return }
        
        let topCard = viewModel.cardModels.last
        
        if topCard == model {
            switch action {
            case .reject:
                swipeLeft()
            case .like:
                swipeRight()
                
                
        func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
            let width = value.translation.width

            if abs(width) < abs(SizeConstants.screenCutoff) {
                returnToCenter()
                return
            }

            if width >= SizeConstants.screenCutoff {
                swipeRight()
            } else {
                swipeLeft()
            }

            // Loop back to the first card if we have reached the last card
            if currentImageIndex >= imageCount {
                currentImageIndex = 0
            } else if currentImageIndex < 0 {
                currentImageIndex = imageCount - 1
            }
        }

            }
        }
    }
}

private extension CardView {
    
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) < abs(SizeConstants.screenCutoff) {
            returnToCenter()
            return
        }
        
        if width >= SizeConstants.screenCutoff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            viewModel: CardsViewModel(service: CardService()),
                 model: CardModel(
                    user: MockData.users[26])
        )
    }
}
