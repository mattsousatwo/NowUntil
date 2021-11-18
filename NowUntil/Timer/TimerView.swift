//
//  TimerView.swift
//  NowUntil
//
//  Created by Matthew Sousa on 11/17/21.
//

import SwiftUI

struct TimerView: View {
    
    // Timer Model 
    let timerModel = TimerModel()
    
    // View State
    @State private var timerState: TimerState = .stopped
    
    // Time for timer
    @State private var selectedTime: Date = Date()
    
    // Button Controls
    @State private var startWasPressed: Bool = false
    @State private var pauseWasPressed: Bool = false
    @State private var stopWasPressed: Bool = false
    
    
    
    var body: some View {
        
        VStack {

            if timerState != .active {
                
                // Date Picker
                timePicker()
                
            } else {
                
                // Display Timer
                
            }

            HStack {
                stopButton()
                Spacer()
                startButton()
            }
            .padding(.horizontal)
            

        }
        
        
        
        
    }

}



// Buttons
extension TimerView {
    
    /// Button responsible for starting the timer
    func startButton() -> some View {
        TimerButton(isActive: $startWasPressed,
                    type: .start) {
            timerModel.startButtonWasPressed()
        }
    }
    
    /// Pause the timer
    func pauseButton() -> some View {
        TimerButton(isActive: $pauseWasPressed,
                    type: .pause) {
            timerModel.pauseButtonWasPressed()
        }
    }
    
    /// Stop the timer
    func stopButton() -> some View {
        return TimerButton(isActive: $stopWasPressed,
                    type: .stop) {
            timerModel.stopButtonWasPressed()
        }

    }
    
    
}


// Date Picker
extension TimerView {
    
    /// Date picker to select a time to countdown until
    func timePicker() -> some View {
        DatePicker("Select a time",
                   selection: $selectedTime,
                   displayedComponents: .hourAndMinute)
            .datePickerStyle(WheelDatePickerStyle() )
            .labelsHidden()
            .padding()
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TimerView()
        }
    }
}
