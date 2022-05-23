//
//  ContentView.swift
//  SoftDevSwiftDemo
//
//  Created by Andy Lin on 4/5/22.
//

import SwiftUI

struct ContentView: View {
    @State var textFieldContent = ""
    @State var goodbyeWorld = false
    @State var showPopover = false
    var body: some View {
        VStack{
            HStack{
                Text("\(!goodbyeWorld ? "Hello" : "Goodbye") World!")
                    .padding()
                Toggle("Is it actually goodbye world?", isOn: $goodbyeWorld)
            }
            List{
                Text("rick astley is supreme")
                Text("welcome to my house")
                Text("good morning")
            }
            List{
                TextField("Any text typed in here will show up in the text below", text: $textFieldContent)
                Text("\(textFieldContent)")
                Text(textFieldContent)
            }
            NavigationView{
                VStack{
                    Button(action: {
                        showPopover.toggle()
                    }){
                        Text("Open a popover")
                    }
                    NavigationLink("hehe sussy vent", destination: {Text("all my homies hate intel")})
                }
            }
        }
        .sheet(isPresented: $showPopover){
            PopoverView(showPopover: $showPopover)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
