//
//  UIColor_extension.swift
//  UsefulExtensions
//
//  Created by Gil Estes on 1/27/22.
//

import SwiftUI

extension UIColor {
//	 Initialize a UIColor from a hex value for #rgba as
	public convenience init?(hex: String) {
		let r, g, b, a: CGFloat
		
		if hex.hasPrefix("#") {
			let start = hex.index(hex.startIndex, offsetBy: 1)
			let hexColor = String(hex[start...])
			
			if hexColor.count == 8 {
				let scanner = Scanner(string: hexColor)
				var hexNumber: UInt64 = 0
				
				if scanner.scanHexInt64(&hexNumber) {
					r = CGFloat((hexNumber & 0xFF00_0000) >> 24) / 255
					g = CGFloat((hexNumber & 0x00FF_0000) >> 16) / 255
					b = CGFloat((hexNumber & 0x0000_FF00) >> 8) / 255
					a = CGFloat(hexNumber & 0x0000_00FF) / 255
					
					self.init(red: r, green: g, blue: b, alpha: a)
					return
				}
			}
		}
		
		return nil
	}
	
	func lighter(by percentage: CGFloat = 30.0) -> UIColor {
		return self.adjust(by: abs(percentage) )
	}
	
	func darker(by percentage: CGFloat = 30.0) -> UIColor {
		return self.adjust(by: -1 * abs(percentage) )
	}
	
	func adjust(by percentage: CGFloat = 30.0) -> UIColor {
		var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
		if self.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
			return UIColor(red: min(red + percentage/100, 1.0),
						   green: min(green + percentage/100, 1.0),
						   blue: min(blue + percentage/100, 1.0),
						   alpha: alpha)
		} else {
			return self
		}
	}
}

