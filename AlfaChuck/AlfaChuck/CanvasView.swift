//
//  CanvasView.swift
//  AlfaChuck
//
//  Created by Lukas Talacek on 06.09.2020.
//

import UIKit

class CanvasView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
     */
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        let systemColor = UIColor.systemBackground
        systemColor.setStroke()
        path.move(to: CGPoint(x: -50, y: 650))
        path.addLine(to: CGPoint(x: 500, y: 550))
        path.lineWidth = 350
        path.stroke()
        
    }
    

}
