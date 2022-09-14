//
//  ContentView.swift
//  personal_project
//
//  Created by Jordan Evans on 9/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Rating Movies").font(.system(size: 40.0))
    
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius:20).fill()
                Text("The Kissing Booth").font(.system(size: 20.0)).foregroundColor(.white)
                Image("kissingBooth").resizable().scaledToFit().padding(.vertical).padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
            ZStack {
                RoundedRectangle(cornerRadius:20).fill()
                Text("Get Out").font(.system(size: 20.0)).foregroundColor(.white)
                Image("getOut").resizable().scaledToFit().padding(.vertical).padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
            ZStack {
                RoundedRectangle(cornerRadius:20).fill()
                Text("Everything Everywhere All at Once").font(.system(size: 20.0)).foregroundColor(.white)
                Image("everythingEverywhere").resizable().scaledToFit().padding(.vertical).padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            }
        }
        .padding(.horizontal)
        .padding(.vertical)
        .foregroundColor(.gray)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
