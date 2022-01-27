//
//  ContentView.swift
//  UsefulExtensions
//
//  Created by Gil Estes on 1/27/22.
//

import SwiftUI

struct ContentView: View {
	
	let numArray = [1,2,3,4,5]
    var body: some View {
		VStack {
			Text("Demo App")
				.font(.headline).italic().bold()
			Text("Current Time: \(Date().currentTime())")
				.padding([.leading, .trailing, .bottom])
			Text("App Version: \(UIApplication.appVersion)")
				.padding([.leading, .trailing, .bottom])

			Text("Summed array values: \(numArray.sum())")
			
		}
		.padding()
		.background(Color(UIColor(hex: "#0077ff99")!))
		.border(Color.gray, width: 5.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
