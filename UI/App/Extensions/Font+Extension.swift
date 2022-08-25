//
//  Font+Extension.swift
//  App
//
//  Created by Haakon Langaas Lageng on 21/08/2022.
//

import Foundation
import SwiftUI

fileprivate class InterFont {
	static let regular = "Inter-Regular"
	static let italic = "Inter-Italic"
	static let extraLight = "Inter-ExtraLightBETA"
	static let extraLightItalic = "Inter-ExtraLightItalicBETA"
	static let light = "Inter-LightBETA"
	static let medium = "Inter-Medium"
	static let mediumItalic = "Inter-MediumItalic"
	static let semibold = "Inter-SemiBold"
	static let semiboldItalic = "Inter-SemiBoldItalic"
	static let bold = "Inter-Bold"
	static let boldItalic = "Inter-BoldItalic"
	static let extraBold = "Inter-ExtraBold"
	static let extraBoldItalic = "Inter-ExtraBoldItalic"
	static let black = "Inter-Black"
}

extension Font {
	static let friendsName = Font.custom(InterFont.semibold, size: 24, relativeTo: .title)
	static let friendsLocation = Font.custom(InterFont.regular, size: 16, relativeTo: .headline)
	
	static let interestText = Font.custom(InterFont.regular, size: 12, relativeTo: .caption)
	
	static let subTitle = Font.custom(InterFont.semibold, size: 16, relativeTo: .title3)
	static let aboutMeText = Font.custom(InterFont.regular, size: 14, relativeTo: .body)
}

extension UIFont {
	static let aboutMeText = UIFont(name: InterFont.regular, size: 14)!
}

struct FontWithLineHeight: ViewModifier {
	let font: UIFont
	let lineHeight: CGFloat
	
	func body(content: Content) -> some View {
		content
			.font(Font(font))
			.lineSpacing(lineHeight - font.lineHeight)
			.padding(.vertical, (lineHeight - font.lineHeight) / 2)
	}
}

extension View {
	func fontWithLineHeight(font: UIFont, lineHeight: CGFloat) -> some View {
		modifier(FontWithLineHeight(font: font, lineHeight: lineHeight))
	}
}
