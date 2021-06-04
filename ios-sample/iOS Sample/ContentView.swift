//
//  ContentView.swift
//  iOS Sample
//
//  Created by Zhaolong Zhong on 5/23/21.
//

import SwiftUI
import Flutter

struct ContentView: View {
    @State private var showingFlutterController = false
    let flutterController = ExampleFlutterViewController()

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("Hello, world!")
                .padding()
            Button("Show Flutter View Controller") {
                self.showingFlutterController = true
            }
            .sheet(isPresented: $showingFlutterController) {
                flutterController
            }
            flutterController
        }
    }
}

struct ExampleFlutterViewController: UIViewControllerRepresentable {
    let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
    
    func makeUIViewController(context: Context) -> FlutterViewController {
        // Use an explicit FlutterEngine, in this case, we need to comment out 23 or 25, and only keep one of them, otherwise, the view is not tappable.
//        return FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        // Use an implicit FlutterEngine: https://flutter.dev/docs/development/add-to-app/ios/add-flutter-screen?tab=no-engine-vc-swift-tab#alternatively---create-a-flutterviewcontroller-with-an-implicit-flutterengine
        return FlutterViewController(project: nil, nibName: nil, bundle: nil)
    }
    
    func updateUIViewController(_ uiViewController: FlutterViewController, context: Context) {
        // Stub
    }
    
    typealias UIViewControllerType = FlutterViewController
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
