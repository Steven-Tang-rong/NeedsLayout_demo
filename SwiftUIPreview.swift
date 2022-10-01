//
//  SwiftUIPreview.swift
//  NeedsLayout_demo
//
//  Created by Steven on 2022/9/27.
//

import SwiftUI

struct SwiftUIPreview: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController {
        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        
    }
    
    typealias UIViewControllerType = ViewController
    
}

struct SwiftUIPreview_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPreview().previewLayout(.device)
    }
}
