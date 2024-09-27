//
//  ContentView.swift
//  WelcomePage
//
//  Created by Julien Bernardo on 2024-09-27.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		
		NavigationStack {
			ZStack {
				SplashScreenView()
				
				WelcomeView()
			}
		}
		.frame(width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
		.ignoresSafeArea()
		.background(.white)
		
	}
}

