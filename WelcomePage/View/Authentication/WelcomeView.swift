//
//  WelcomeView.swift
//  WelcomePage
//
//  Created by Julien Bernardo on 2024-09-27.
//

import SwiftUI

struct WelcomeView: View {
	@State var show = false
	
	var body: some View {
		ZStack {
			if show {
				WelcomePageBackgroundView()
					.transition(.opacity.animation(.easeInOut(duration: 0.8)))
				
				ScanInvitationView()
					.transition(.opacity.animation(.easeInOut(duration: 0.7).delay(0.4)))
				
				LoginButtonView()
					.transition(.opacity.animation(.easeInOut(duration: 0.7).delay(0.4)))
			}
		}
		.frame(width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
		.ignoresSafeArea()
		.onAppear{
			DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(4700)) {
				self.show = true
			}
		}
	}
}


struct WelcomePageBackgroundView: View {
	var body: some View {
		ZStack {
			Image("Login")
				.resizable()
				.scaledToFill()
				.clipped()
			
			Color.black.opacity(0.25)
			
			VStack(spacing: 0) {

				Text("SOLO")
					.font(Font.custom("PlayfairDisplay-Regular", size: 80))
					.foregroundStyle(.white)
					.padding(.top, (80/852) * SCREEN_HEIGHT)

				Text("WELCOME")
					.font(Font.custom("Roboto-Regular", size: 14))
					.foregroundStyle(.white)

				Spacer()
			}
			
			
		}
		.frame(width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
		.ignoresSafeArea()
	}
}
