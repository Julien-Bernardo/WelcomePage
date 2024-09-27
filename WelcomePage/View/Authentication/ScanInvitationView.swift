//
//  ScanInvitationView.swift
//  WelcomePage
//
//  Created by Julien Bernardo on 2024-09-27.
//

import SwiftUI

struct ScanInvitationView: View {
	
	var body: some View {
		
		VStack(spacing: 0) {

			Spacer()
			
			NavigationLink {
				InvitationView()
			} label: {
				ZStack {
					RoundedRectangle(cornerRadius: 18)
						.foregroundStyle(.thinMaterial)
						.frame(width: SCREEN_WIDTH - 40, height: SCREEN_WIDTH - 40)
						.overlay(
							RoundedRectangle(cornerRadius: 18)
								.inset(by: 1)
								.stroke(.white.opacity(0.42), lineWidth: 2)
						)
					
					RoundedRectangle(cornerRadius: 24)
						.foregroundStyle(.clear)
						.frame(width: SCREEN_WIDTH - 114, height: SCREEN_WIDTH - 114)
						.overlay(
							ZStack {
								RoundedRectangle(cornerRadius: 24)
									.inset(by: 1.5)
									.stroke(.black, lineWidth: 3)
								
								Rectangle()
									.foregroundStyle(.black)
									.frame(width: SCREEN_WIDTH - 114, height: 120)
									.blendMode(.destinationOut)
								
								Rectangle()
									.foregroundStyle(.black)
									.frame(width: 120, height: SCREEN_WIDTH - 114)
									.blendMode(.destinationOut)
							}
								.compositingGroup()
						)
					
					VStack(spacing: 0) {
						Image("QR")
							.resizable()
							.scaledToFit()
							.frame(width: SCREEN_WIDTH - 222, height: SCREEN_WIDTH - 222)
						
						Text("SCAN INVITATION")
							.font(Font.custom("PlayfairDisplay-Regular", size: 18))
							.foregroundStyle(.black)
					}
				}
			}
			
			Spacer()
		}
	}
}
