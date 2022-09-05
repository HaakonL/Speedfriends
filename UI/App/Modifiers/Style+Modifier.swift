//
//  Style+Modifier.swift
//  App
//
//  Created by Haakon Langaas Lageng on 05/09/2022.
//

import SwiftUI

struct Style: ViewModifier {
	
	private let font: Font
	private let color: Color
	
	init(_ font: Font, _ color: Color) {
		self.font = font
		self.color = color
	}
	
	func body(content: Content) -> some View {
		content
			.font(font)
			.foregroundColor(color)
	}
}

extension View {
	func style(_ font: Font, _ color: Color = .gray) -> some View {
		modifier(Style(font, color))
	}
}
