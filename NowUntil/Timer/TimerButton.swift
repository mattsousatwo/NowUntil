//
//  TimerButton.swift
//  NowUntil
//
//  Created by Matthew Sousa on 11/18/21.
//

import SwiftUI

/// Buttons used to control the timer
struct TimerButton: View {
    @Binding var isActive: Bool
    
    let type: TimerButtonType
    let size: CGFloat = 50
    var imageSize: CGFloat {
        return size / 2
    }
    var action: () -> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            Circle()
                .foregroundColor(.yellow)
                .frame(width: size,
                       height: size,
                       alignment: .center)
                .overlay(
                    type.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.black)
                        .frame(width: imageSize,
                               height: imageSize,
                               alignment: .center)
                    , alignment: .center)
            
                            
                
        }
        
        
    }
    
}



struct TimerButton_Previews: PreviewProvider {
    static var previews: some View {
        TimerButton(isActive: .constant(true),
                    type: .start) {
            print("")
        }
        
        
    }
}
