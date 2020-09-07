//
//  CanvasView.swift
//  AlfaChuck
//
//  Created by Lukas Talacek on 06.09.2020.
//

import UIKit

class CanvasView: UIView {

    override func draw(_ rect: CGRect) {
        
        let triangle = UIBezierPath()
        let path = UIBezierPath()
        
        let systemColor = UIColor.systemBackground
        systemColor.setStroke()
        systemColor.setFill()
        
        triangle.move(to: CGPoint(x: 50, y: 300))
        triangle.addLine(to: CGPoint(x: 50, y: 375))
        triangle.addLine(to: CGPoint(x: 150, y: 300))
        triangle.lineWidth = 1
        triangle.fill()
        
        path.move(to: CGPoint(x: -50, y: 650))
        path.addLine(to: CGPoint(x: 500, y: 550))
        path.lineWidth = 350
        
        triangle.stroke()
        path.stroke()
        
    }
    

}
