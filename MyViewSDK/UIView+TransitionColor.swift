//
//  UIView+TransitionColor.swift
//  Test
//
//  Created by 林文俊 on 2020/1/14.
//  Copyright © 2020 林文俊. All rights reserved.
//

import UIKit

extension UIView {
    
    // 左到右颜色 渐变
    @objc public func addTransitionColorLeftToRight(startColor: UIColor, endColor: UIColor) {
        addTransitionColor(startColor: startColor, endColor: endColor, startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 1, y: 0))
    }
    
    
    // 上到下颜色 渐变
    @objc public func addTransitionColorTopToBottm(startColor: UIColor, endColor: UIColor) {
        addTransitionColor(startColor: startColor, endColor: endColor, startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 0, y: 1))
    }
    
    // 左上到右下颜色 倾斜渐变
    @objc public func addTransitionColorTiltLeftTopToRightBottm(startColor: UIColor, endColor: UIColor) {
        addTransitionColor(startColor: startColor, endColor: endColor, startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: 1, y: 1))
    }
    
    // 右上到左下颜色 倾斜渐变
    @objc public func addTransitionColorTiltRightTopToLeftBottm(startColor: UIColor, endColor: UIColor) {
        addTransitionColor(startColor: startColor, endColor: endColor, startPoint: CGPoint(x: 1, y: 0), endPoint: CGPoint(x: 0, y: 1))
    }
    
    /**
     颜色渲染：
     startColor: 开始颜色
     endColor: 结束颜色
     startPoint: 开始位置
     endPoint: 结束位置
     */
    @objc public func addTransitionColor(startColor: UIColor, endColor: UIColor, startPoint: CGPoint, endPoint: CGPoint) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        gradientLayer.locations = [0, 1]
        gradientLayer.startPoint = startPoint;
        gradientLayer.endPoint = endPoint;
        gradientLayer.frame = bounds;
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
