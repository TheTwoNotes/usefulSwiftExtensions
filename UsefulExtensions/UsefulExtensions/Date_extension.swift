//
//  Date_extension.swift
//  UsefulExtensions
//
//  Created by Gil Estes on 1/27/22.
//

import Foundation

extension Date {

//	Get the current time formatted as 15:22:23
	func currentTime() -> String {
		
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "HH:mm:ss"
		
		return dateFormatter.string(from: self)
	}

//	 Is this Date between the two passed in Date objects
	func isBetween(_ date1: Date, and date2: Date) -> Bool {
		return (min(date1, date2) ... max(date1, date2)).contains(self)
	}

}
