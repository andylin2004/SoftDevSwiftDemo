//
//  PopoverView.swift
//  SoftDevSwiftDemo
//
//  Created by Andy Lin on 4/12/22.
//

import SwiftUI

struct PopoverView: View {
    @Binding var showPopover: Bool
    var body: some View {
        Button(action: {
            showPopover.toggle()
        }){
            Text("Close this Popover")
        }
    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView(showPopover: .constant(true))
    }
}
