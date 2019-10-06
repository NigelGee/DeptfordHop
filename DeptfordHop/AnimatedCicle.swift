//
//  AnimatedCicle.swift
//  DeptfordHop
//
//  Created by Nigel Gee on 05/10/2019.
//  Copyright © 2019 Nigel Gee. All rights reserved.
//

import SwiftUI

extension View {
    func animateForever(using animation: Animation = Animation.linear(duration: 5), _ action: @escaping () -> Void) -> some View {
        let repeated = animation.repeatForever(autoreverses: false)
        
        return onAppear {
            withAnimation(repeated) {
                action()
            }
        }
    }
}

struct AnimatedCicle: View {
    @State var rotation: Double = 0
    
    var body: some View {
        let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red])
        let conic = AngularGradient(gradient: colors, center: .center)
        return Circle()
            .strokeBorder(conic, lineWidth: 20)
            .rotationEffect(.degrees(self.rotation))
            .animateForever {
                self.rotation = 360
            }
        .padding(.all, 120)
        
    }
}

struct AnimatedCicle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AnimatedCicle()
            
            AnimatedCicle()
                .previewDevice("iPhone SE")
        }
    }
}
