//
//  ContentView.swift
//  BindbleToggleSwiftUı
//
//  Created by Ömer on 31.01.2025.
//

import SwiftUI
import SwiftData

@Observable
class DarkTheme  {
    var isEnable : Bool = false
}


struct DarkChoiceView : View {
    
    @Bindable var darkTheme : DarkTheme
    
    var body: some View {
        Toggle(isOn: $darkTheme.isEnable){
            EmptyView()
        }.fixedSize()
    }
    
}

struct ContentView: View {

    @State private var darkTheme = DarkTheme()
    
    var body: some View {
        VStack{
            DarkChoiceView(darkTheme: darkTheme)
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(darkTheme.isEnable ? .black : .white)
    }

 
}

#Preview {
    ContentView()
}
