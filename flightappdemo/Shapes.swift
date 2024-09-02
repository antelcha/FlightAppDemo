//
//  Shapes.swift
//  flightappdemo
//
//  Created by Mustafa Girgin on 2.09.2024.
//

import SwiftUI



struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct PlaneHorizontal: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let originalWidth: CGFloat = 25.0
        let originalHeight: CGFloat = 25.0
        let scaleX = rect.width / originalWidth
        let scaleY = rect.height / originalHeight
        let scale = min(scaleX, scaleY)
        
        // Calculate the offsets to center the shape
        let offsetX = (rect.width - originalWidth * scale) / 2
        let offsetY = (rect.height - originalHeight * scale) / 2

        path.move(to: CGPoint(x: (9.51 * scale) + offsetX, y: (20.6924 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (14.0355 * scale) + offsetX, y: (13.6213 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (18.9853 * scale) + offsetX, y: (13.6213 * scale) + offsetY))
        path.addCurve(to: CGPoint(x: (23.2279 * scale) + offsetX, y: (11.5 * scale) + offsetY),
                      control1: CGPoint(x: (21.1066 * scale) + offsetX, y: (13.6213 * scale) + offsetY),
                      control2: CGPoint(x: (22.8744 * scale) + offsetX, y: (12.5607 * scale) + offsetY))
        path.addCurve(to: CGPoint(x: (18.9853 * scale) + offsetX, y: (9.37868 * scale) + offsetY),
                      control1: CGPoint(x: (22.8744 * scale) + offsetX, y: (10.4393 * scale) + offsetY),
                      control2: CGPoint(x: (21.1066 * scale) + offsetX, y: (9.37868 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (14.0355 * scale) + offsetX, y: (9.37868 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (9.51 * scale) + offsetX, y: (2.30761 * scale) + offsetY))
        path.addCurve(to: CGPoint(x: (8.37867 * scale) + offsetX, y: (1.88335 * scale) + offsetY),
                      control1: CGPoint(x: (9.22719 * scale) + offsetX, y: (1.88335 * scale) + offsetY),
                      control2: CGPoint(x: (8.80293 * scale) + offsetX, y: (1.74193 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (7.81298 * scale) + offsetX, y: (2.02477 * scale) + offsetY))
        path.addCurve(to: CGPoint(x: (7.10587 * scale) + offsetX, y: (3.15614 * scale) + offsetY),
                      control1: CGPoint(x: (7.31801 * scale) + offsetX, y: (2.2369 * scale) + offsetY),
                      control2: CGPoint(x: (7.03516 * scale) + offsetX, y: (2.66117 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (8.37867 * scale) + offsetX, y: (9.37868 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (4.84313 * scale) + offsetX, y: (10.0858 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (2.72181 * scale) + offsetX, y: (7.96447 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (1.3076 * scale) + offsetX, y: (7.96447 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (2.0147 * scale) + offsetX, y: (11.5 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (1.3076 * scale) + offsetX, y: (15.0355 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (2.72181 * scale) + offsetX, y: (15.0355 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (4.84313 * scale) + offsetX, y: (12.9142 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (8.37867 * scale) + offsetX, y: (13.6213 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (7.10587 * scale) + offsetX, y: (19.8439 * scale) + offsetY))
        path.addCurve(to: CGPoint(x: (7.81298 * scale) + offsetX, y: (20.9752 * scale) + offsetY),
                      control1: CGPoint(x: (7.03516 * scale) + offsetX, y: (20.3388 * scale) + offsetY),
                      control2: CGPoint(x: (7.318 * scale) + offsetX, y: (20.7631 * scale) + offsetY))
        path.addLine(to: CGPoint(x: (8.30795 * scale) + offsetX, y: (21.1874 * scale) + offsetY))
        path.addCurve(to: CGPoint(x: (9.51004 * scale) + offsetX, y: (20.6924 * scale) + offsetY),
                      control1: CGPoint(x: (8.80293 * scale) + offsetX, y: (21.2581 * scale) + offsetY),
                      control2: CGPoint(x: (9.22719 * scale) + offsetX, y: (21.1167 * scale) + offsetY))

        return path
    }
}


#Preview
{PlaneHorizontal()}

struct TicketShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let circleRad: CGFloat = 8

        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY / 2 - circleRad))
        path.addArc(center: CGPoint(x: rect.maxX, y: rect.maxY / 2), radius: circleRad, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 180), clockwise: true)
        path.addArc(center: CGPoint(x: rect.maxX, y: rect.maxY / 2), radius: circleRad, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 90), clockwise: true)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY / 2 - circleRad))
        path.addArc(center: CGPoint(x: rect.minX, y: rect.maxY / 2), radius: circleRad, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: true)
        path.addArc(center: CGPoint(x: rect.minX, y: rect.maxY / 2), radius: circleRad, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: -90), clockwise: false)

        path.closeSubpath()
        return path
    }
}




