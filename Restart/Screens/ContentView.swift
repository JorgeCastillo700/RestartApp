//
//  ContentView.swift
//  Restart
//
//  Created by Jorge Castillo on 1/24/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // TEST
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnBoardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
