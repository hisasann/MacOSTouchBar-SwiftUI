//
//  ContentView.swift
//  MacOSTouchBar
//
//  Created by ‰πÖÊùæÁî±Âπ∏ on 2020/08/09.
//  Copyright ¬© 2020 ‰πÖÊùæÁî±Âπ∏. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .focusable()
                // https://stackoverflow.com/questions/59919050/how-can-i-display-touch-bar-buttons-using-swiftui
            .touchBar {
                Button(action: {
                    print("🍕")
                }) {
                    Text("🍕")
                }
                Button(action: {
                    print("🍣")
                }) {
                    Text("🍣")
                }
                // https://www.simpleswiftguide.com/how-to-expand-swiftui-views-to-span-across-entire-width-or-height-of-screen/
                Text("hisasann")
                .frame(width: 300)
                .background(Color.pink)
                
            }
        }
        .onAppear {
            print("ContentView onAppear")
        }
        .onDisappear {
            print("ContentView onDisappear")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
