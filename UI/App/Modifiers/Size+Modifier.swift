//
//  Size+Modifier.swift
//  App
//
//  Created by Haakon Langaas Lageng on 05/09/2022.
//

import SwiftUI

struct Size: ViewModifier {
	
	private let maxWidth: CGFloat
	private let maxHeight: CGFloat
	private let alignment: Alignment
	
	init(_ maxWidth: CGFloat, _ maxHeight: CGFloat, _ alignment: Alignment) {
		self.maxWidth = maxWidth
		self.maxHeight = maxHeight
		self.alignment = alignment
	}
	
	func body(content: Content) -> some View {
		content
			.frame(
				minWidth: 0,
				maxWidth: maxWidth,
				minHeight: 0,
				maxHeight: maxHeight,
				alignment: alignment
			)
	}
}

extension View {
	func size(_ maxWidth: CGFloat = .infinity, _ maxHeight: CGFloat = .infinity, _ alignment: Alignment = .topLeading) -> some View {
		modifier(Size(maxWidth, maxHeight, alignment))
	}
}
