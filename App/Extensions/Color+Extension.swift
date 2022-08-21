//
//  Color+Extension.swift
//  App
//
//  Created by Haakon Langaas Lageng on 15/08/2022.
//

import SwiftUI

extension Color {
	static let bg = Color("background")
	
	static let imageGradientStart = Color("image-gradient-start")
	static let imageGradientEnd = Color("image-gradient-end")
	static let textDropShadow = Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.5)
	
	static let interestText = Color("interest-text")
	static let interestBackground = Color("interest-background")
	static let interestGradientBorderStart = Color("interest-gradient-border-start")
	static let interestGradientBorderEnd = Color("interest-gradient-border-end")
	
	static let titleGradientStart = Color("title-gradient-start")
	static let titleGradientEnd = Color("title-gradient-end")
	static let aboutMeText = Color("about-me-text")
}

extension ShapeStyle where Self == Color {
	static var interestBackground: Color { .interestBackground }
}
