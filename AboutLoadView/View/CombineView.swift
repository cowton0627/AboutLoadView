//
//  CombineView.swift
//  AboutLoadView
//
//  Created by Chun-Li Cheng on 2021/12/1.
//

import UIKit

class CombineView: UIView {
    
    let grayView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray
        return view
    }()
        
    let imageView: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.image = UIImage(systemName: "pencil")
        return imgView
    }()

    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Description"
        return label
    }()
    
    let tapMeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        return button
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        setupView()
    }
    
    func setupView() {
        backgroundColor = .systemGreen
        addSubview(grayView)
        addSubview(imageView)
        addSubview(descriptionLabel)
        addSubview(tapMeButton)

        NSLayoutConstraint.activate([
            grayView.widthAnchor.constraint(equalToConstant: 200),
            grayView.heightAnchor.constraint(equalTo: grayView.widthAnchor),
            grayView.leadingAnchor.constraint(equalTo: leadingAnchor,
                                              constant: UIScreen.main.bounds.width/2 - 100),
            grayView.topAnchor.constraint(equalTo: topAnchor,
                                          constant: UIScreen.main.bounds.height/2 - 225),
            
            tapMeButton.widthAnchor.constraint(equalToConstant: 200),
            tapMeButton.heightAnchor.constraint(equalToConstant: 40),
            tapMeButton.leadingAnchor.constraint(equalTo: leadingAnchor,
                                                 constant: UIScreen.main.bounds.width/2 - 100),
            tapMeButton.topAnchor.constraint(equalTo: topAnchor,
                                             constant: UIScreen.main.bounds.height/2 + 100),
            
            imageView.widthAnchor.constraint(equalToConstant: 24),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
            imageView.trailingAnchor.constraint(equalTo: descriptionLabel.leadingAnchor,
                                                constant: -12),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
//            descriptionLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor,
//                                                      constant: 12),
            descriptionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            descriptionLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            descriptionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
//            descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
        
        tapMeButton.setTitle("Tap Me", for: .normal)
        tapMeButton.layer.cornerRadius = 20
        tapMeButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        print("Hello Swift!")
    }
    
    override func draw(_ rect: CGRect) {
        // 等腰藍色三角形
//        let path = UIBezierPath()
//        var point = CGPoint(x: 10, y: 10)
//        path.move(to: point)
//        point = CGPoint(x: 90, y: 10)
//        path.addLine(to: point)
//        point = CGPoint(x: 90, y: 90)
//        path.addLine(to: point)
//        path.close()
//        UIColor(red: 0, green: 0, blue: 1, alpha: 1).setFill()
//        path.fill()
        //本體
        let bodyPath = UIBezierPath()
        bodyPath.move(to: CGPoint(x: 170, y: 70))
        bodyPath.addQuadCurve(to: CGPoint(x: 234, y: 70), controlPoint: CGPoint(x: 202, y: 55))
        bodyPath.addLine(to: CGPoint(x: 269, y: 110))
        bodyPath.addQuadCurve(to: CGPoint(x: 253, y: 180), controlPoint: CGPoint(x: 280, y: 153))
        bodyPath.addLine(to: CGPoint(x: 152, y: 180))
        bodyPath.addQuadCurve(to: CGPoint(x: 135, y: 110), controlPoint: CGPoint(x: 125, y: 153))
//        bodyPath.close()
        //右耳
        let rightEarPath = UIBezierPath(ovalIn: CGRect(x: 98, y: 41, width: 74, height: 69))
        bodyPath.append(rightEarPath)
        //左耳
        let leftEarPath = UIBezierPath(ovalIn: CGRect(x: 232, y: 41, width: 74, height: 69))
        bodyPath.append(leftEarPath)
        //本體上色
        let bodyLayer = CAShapeLayer()
        bodyLayer.fillColor = UIColor.black.cgColor
        bodyLayer.path = bodyPath.cgPath
        layer.addSublayer(bodyLayer)
        //臉
        let facePath = UIBezierPath()
        facePath.move(to: CGPoint(x: 152, y: 180))
        facePath.addQuadCurve(to: CGPoint(x: 155, y: 148), controlPoint: CGPoint(x: 131, y: 145))
        facePath.addQuadCurve(to: CGPoint(x: 203, y: 106), controlPoint: CGPoint(x: 162, y: 70))
        facePath.addQuadCurve(to: CGPoint(x: 253, y: 148), controlPoint: CGPoint(x: 238, y: 70))
        facePath.addQuadCurve(to: CGPoint(x: 253, y: 180), controlPoint: CGPoint(x: 273, y: 145))
        facePath.addQuadCurve(to: CGPoint(x: 152, y: 180), controlPoint: CGPoint(x: 203, y: 210))
//        facePath.close()
        let faceLayer = CAShapeLayer()
        faceLayer.fillColor = CGColor(srgbRed: 254/255, green: 218/255, blue: 195/255, alpha: 1)
        faceLayer.path = facePath.cgPath
        layer.addSublayer(faceLayer)
        //五官features
        let leftEyePath = UIBezierPath(ovalIn: CGRect(x: 172,y: 141, width: 12, height: 17))
        let rightEyePath = UIBezierPath(ovalIn:CGRect(x: 220, y: 141, width: 12, height: 17))
        let nosePath = UIBezierPath(ovalIn: CGRect(x: 196, y: 158, width: 14, height: 11))
        leftEyePath.append(rightEyePath)
        leftEyePath.append(nosePath)
        let featuresLayer = CAShapeLayer()
        featuresLayer.fillColor = UIColor.black.cgColor
        featuresLayer.path = leftEyePath.cgPath
        layer.addSublayer(featuresLayer)
        //腮紅blush
        let blushLeft = UIBezierPath(ovalIn: CGRect(x: 147, y: 154, width: 18, height: 12))
        let blushRight = UIBezierPath(ovalIn: CGRect(x: 238, y: 154, width: 18, height: 12))
        blushLeft.append(blushRight)
        let blushLayer = CAShapeLayer()
        blushLayer.fillColor = CGColor(srgbRed: 244/255, green: 173/255, blue: 171/255, alpha: 1)
        blushLayer.path = blushLeft.cgPath
        layer.addSublayer(blushLayer)
        
        // 左獠牙
        let leftFangPath = UIBezierPath()
        leftFangPath.move(to: CGPoint(x: 185, y: 170)) // 起始點，你可以根據需要調整
        leftFangPath.addLine(to: CGPoint(x: 195, y: 175)) // 獠牙的長度，你可以根據需要調整
        leftFangPath.addLine(to: CGPoint(x: 130, y: 185)) // 創建一個小的寬度，你可以根據需要調整
        leftFangPath.close()

        // 右獠牙
        let rightFangPath = UIBezierPath()
        rightFangPath.move(to: CGPoint(x: 217, y: 170)) // 起始點，你可以根據需要調整
        rightFangPath.addLine(to: CGPoint(x: 209, y: 175)) // 獠牙的長度，你可以根據需要調整
        rightFangPath.addLine(to: CGPoint(x: 274, y: 185)) // 創建一個小的寬度，你可以根據需要調整
        rightFangPath.close()

        // 添加到圖層
        let leftFangLayer = CAShapeLayer()
        leftFangLayer.fillColor = UIColor.black.cgColor.copy(alpha: 0.4)
        leftFangLayer.path = leftFangPath.cgPath
        layer.addSublayer(leftFangLayer)

        let rightFangLayer = CAShapeLayer()
        rightFangLayer.fillColor = UIColor.black.cgColor.copy(alpha: 0.4)
        rightFangLayer.path = rightFangPath.cgPath
        layer.addSublayer(rightFangLayer)
    }
    
    
    func render() {
        
    }
}
