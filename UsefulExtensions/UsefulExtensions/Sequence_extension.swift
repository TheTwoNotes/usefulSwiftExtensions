//
//  Sequence_extension.swift
//  UsefulExtensions
//
//  Created by Gil Estes on 1/27/22.
//

import Foundation

extension Sequence where Element: AdditiveArithmetic {

//	Combine the elements of a numeric array and return the sum of it's contents
	func sum() -> Element {
		reduce(.zero, +)
	}
}
