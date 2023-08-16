//
//  HasCustomView.swift
//  AboutLoadView
//
//  Created by Chun-Li Cheng on 2021/12/1.
//

import Foundation
import UIKit

public protocol HasCustomView {
    associatedtype CustomView: UIView
}

// 當遵從協議的是 UIViewController，下面的程式碼才能滿足。
extension HasCustomView where Self: UIViewController {
    /// UIViewController 的自定義 view。
    public var customView: CustomView {
        guard let customView = view as? CustomView else {
            fatalError("""
            Expected view to be of type \(CustomView.self) but got \(type(of: view)) instead
            """)
        }
        return customView
    }
}
