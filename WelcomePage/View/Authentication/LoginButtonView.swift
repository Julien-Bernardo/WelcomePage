//
//  LoginButtonView.swift
//  WelcomePage
//
//  Created by Julien Bernardo on 2024-09-27.
//

import SwiftUI

struct LoginButtonView: View {
	var body: some View {
		VStack(spacing: 0) {
			Spacer()
			
			HStack {
				Rectangle()
					.foregroundStyle(.white)
					.frame(width: 70, height: 1)
					.padding(.leading, 20)
				
				Spacer()
				
				Text("Already have an account?")
					.font(Font.custom("Roboto-Regular", size: 16))
					.foregroundStyle(.white)
				
				Spacer()
				
				Rectangle()
					.foregroundStyle(.white)
					.frame(width: 70, height: 1)
					.padding(.trailing, 20)
				
			}
			.padding(.bottom, (50/852) * SCREEN_HEIGHT)
			
			
			NavigationLink {
				SignInView()
			} label: {
				RoundedRectangle(cornerRadius: 4)
					.foregroundStyle(.thinMaterial)
					.frame(width: SCREEN_WIDTH - 40, height: 55)
					.opacity(0.5)
					.shadow(color: .black.opacity(0.12), radius: 4, x: 5, y: 5)
					.overlay(
						RoundedRectangle(cornerRadius: 4)
							.inset(by: 1)
							.stroke(.white.opacity(0.42), lineWidth: 2)
							.overlay(
								HStack {
									Spacer()
									
									Text("Log In")
										.font(Font.custom("PlayfairDisplay-Regular", size: 24))
										.foregroundStyle(.white)
									
									Spacer()
								}
								
							)
						
					)
			}
			.padding(.bottom, (56/852) * SCREEN_HEIGHT)
		}
	}
}

