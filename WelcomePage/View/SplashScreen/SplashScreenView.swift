//
//  SplashScreenView.swift
//  WelcomePage
//
//  Created by Julien Bernardo on 2024-09-27.
//

import SwiftUI

struct SplashScreenView: View {
	@State var show: Bool = false
	
	var body: some View {
		ZStack {
			if show {
				BackgroundView()
					.transition(.opacity.animation(.easeInOut(duration: 0.7)))
				
				WhiteLogoView()
					.transition(.opacity.animation(.easeInOut(duration: 0.8).delay(0.8)))
				
				BlackLogoView()
					.transition(.opacity.animation(.easeInOut(duration: 0.8).delay(1.6)))

				BlankView()
					.transition(.opacity.animation(.easeInOut(duration: 0.8).delay(3.1)))
			}
			
		}
		.frame(width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
		.ignoresSafeArea()
		.background(.white)
		.onAppear{
			DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(650)) {
				self.show.toggle()
			}
		}
	}
}

struct BackgroundView: View {
	var body: some View {
		ZStack {
			Image("SplashScreen")
				.resizable()
				.scaledToFill()
				.clipped()
		}
		.frame(width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
		.ignoresSafeArea()
	}
}

struct WhiteLogoView: View {
	var body: some View {
		ZStack {
			VStack(alignment: .center, spacing: -10) {
				
				HStack {
					Spacer()
					
					Text("SOLO")
						.font(Font.custom("PlayfairDisplay-Regular", size: 80))
						.foregroundColor(.white)
					Spacer()
				}
				
				HStack {
					Spacer()
					
					Text("studio")
						.font(Font.custom("PlayfairDisplay-Regular", size: 40))
						.foregroundColor(.white)
					
					Spacer()
				}
				
				
				Spacer()
			}
			.padding(.top, (241/852) * SCREEN_HEIGHT)

		}
		.frame(width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
		.ignoresSafeArea()
	}
}

struct BlackLogoView: View {
	var body: some View {
		ZStack {
			VStack(alignment: .center, spacing: -10) {
				
				HStack {
					Spacer()
					
					Text("SOLO")
						.font(Font.custom("PlayfairDisplay-Regular", size: 80))
						.foregroundColor(.black)
					Spacer()
				}
				
				HStack {
					Spacer()
					
				Text("studio")
					.font(Font.custom("PlayfairDisplay-Regular", size: 40))
					.foregroundColor(.black)
					
					Spacer()
				}
				
				
				Spacer()
			}
			.padding(.top, (241/852) * SCREEN_HEIGHT)

		}
		.frame(width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
		.ignoresSafeArea()
	}
}

struct BlankView: View {
	var body: some View {
		ZStack {
			
		}
		.frame(width: SCREEN_WIDTH, height: SCREEN_HEIGHT)
		.ignoresSafeArea()
		.background(.white)
	}
}
