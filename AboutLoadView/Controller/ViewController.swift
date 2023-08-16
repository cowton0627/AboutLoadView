//
//  ViewController.swift
//  AboutLoadView
//
//  Created by Chun-Li Cheng on 2021/12/1.
//

import UIKit

class ViewController: UIViewController, HasCustomView {
    typealias CustomView = CombineView
    
//    private let myView: UIView = {
//        let view = UIView(frame: CGRect(x: UIScreen.main.bounds.width/2 - 100, y: UIScreen.main.bounds.height/2 - 225, width: 200, height: 200))
//        view.backgroundColor = .systemGray
//        return view
//    }()
//
//    private let myButton: UIButton = {
//        let button = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2 - 100, y: UIScreen.main.bounds.height/2 + 100, width: 200, height: 40))
//        button.backgroundColor = .systemBlue
//        return button
//    }()
//
//    private let imageView: UIImageView = {
//        let view = UIImageView(frame: CGRect(x: 12, y: UIScreen.main.bounds.height/2, width: 24, height: 24))
//        view.image = UIImage(systemName: "pencil")
//        return view
//     }()
//
//     private let descriptionLabel: UILabel = {
//         let label = UILabel(frame: CGRect(x: 48, y: UIScreen.main.bounds.height/2, width: 250, height: 24))
//         label.text = "description"
//         return label
//     }()

    
//    var myView: MyView {
//        return view as! MyView
//    }
    
    override func loadView() {
        let customView = CustomView()
        view = customView
//        customView.myButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupViews()
        
//        let customView = CustomView()
//        customView.myButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//        view = customView
//        customView.render()
    }
    
//    @objc func buttonTapped() {
//        print("Hello Swift!")
//    }
    
//    private func setupViews() {
//        view.backgroundColor = .systemGreen
//        setupMyView()
//        setupMyButton()
//        setupImageView()
//        setupDescriptionLabel()
//        drawing()
//    }
//
//    private func setupMyView() {
//        view.addSubview(myView)
//    }
//
//    private func setupMyButton() {
//        view.addSubview(myButton)
//        myButton.setTitle("Tap Me", for: .normal)
//        myButton.layer.cornerRadius = 20
//        myButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
//    }
    
//    private func setupImageView() {
//        view.addSubview(imageView)
//    }
//
//    private func setupDescriptionLabel() {
//        view.addSubview(descriptionLabel)
//    }
//
//    private func drawing() {
//        //本體
//        let bodyPath = UIBezierPath()
//        bodyPath.move(to: CGPoint(x: 170, y: 70))
//        bodyPath.addQuadCurve(to: CGPoint(x: 234, y: 70), controlPoint: CGPoint(x: 202, y: 55))
//        bodyPath.addLine(to: CGPoint(x: 269, y: 110
//        ))
//        bodyPath.addQuadCurve(to: CGPoint(x: 253, y: 180), controlPoint: CGPoint(x: 280, y: 153))
//        bodyPath.addLine(to: CGPoint(x: 152, y: 180))
//        bodyPath.addQuadCurve(to: CGPoint(x: 135, y: 110), controlPoint: CGPoint(x: 125, y: 153))
//        bodyPath.close()
//        //右耳
//        let rightEarPath = UIBezierPath(ovalIn: CGRect(x: 98, y: 41, width: 74, height: 69))
//        bodyPath.append(rightEarPath)
//        //左耳
//        let leftEarPath = UIBezierPath(ovalIn: CGRect(x: 232, y: 41, width: 74, height: 69))
//        bodyPath.append(leftEarPath)
//        //本體上色
//        let bodyLayer = CAShapeLayer()
//        bodyLayer.fillColor = UIColor.black.cgColor
//        bodyLayer.path = bodyPath.cgPath
//        view.layer.addSublayer(bodyLayer)
//        //臉
//        let facePath = UIBezierPath()
//        facePath.move(to: CGPoint(x: 152, y: 180))
//        facePath.addQuadCurve(to: CGPoint(x: 155, y: 148), controlPoint: CGPoint(x: 131, y: 145))
//        facePath.addQuadCurve(to: CGPoint(x: 203, y: 106), controlPoint: CGPoint(x: 162, y: 70))
//        facePath.addQuadCurve(to: CGPoint(x: 253, y: 148), controlPoint: CGPoint(x: 238, y: 70))
//        facePath.addQuadCurve(to: CGPoint(x: 253, y: 180), controlPoint: CGPoint(x: 273, y: 145))
//        facePath.addQuadCurve(to: CGPoint(x: 152, y: 180), controlPoint: CGPoint(x: 203, y: 210))
//        facePath.close()
//        let faceLayer = CAShapeLayer()
//        faceLayer.fillColor = CGColor(srgbRed: 254/255, green: 218/255, blue: 195/255, alpha: 1)
//        faceLayer.path = facePath.cgPath
//        view.layer.addSublayer(faceLayer)
//        //五官features
//        let leftEyePath = UIBezierPath(ovalIn: CGRect(x: 172,y: 141, width: 12, height: 17))
//        let rightEyePath = UIBezierPath(ovalIn:CGRect(x: 220, y: 141, width: 12, height: 17))
//        let nosePath = UIBezierPath(ovalIn: CGRect(x: 196, y: 158, width: 14, height: 11))
//        leftEyePath.append(rightEyePath)
//        leftEyePath.append(nosePath)
//        let featuresLayer = CAShapeLayer()
//        featuresLayer.fillColor = UIColor.black.cgColor
//        featuresLayer.path = leftEyePath.cgPath
//        view.layer.addSublayer(featuresLayer)
//        //腮紅blush
//        let blushLeft = UIBezierPath(ovalIn: CGRect(x: 147, y: 154, width: 18, height: 12))
//        let blushRight = UIBezierPath(ovalIn: CGRect(x: 238, y: 154, width: 18, height: 12))
//        blushLeft.append(blushRight)
//        let blushLayer = CAShapeLayer()
//        blushLayer.fillColor = CGColor(srgbRed: 244/255, green: 173/255, blue: 171/255, alpha: 1)
//        blushLayer.path = blushLeft.cgPath
//        view.layer.addSublayer(blushLayer)
//
//    }
    

}

