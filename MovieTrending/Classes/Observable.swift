//
//  Observable.swift
//  MovieTrending
//
//  Created by 강석호 on 2024/01/05.
//

import Foundation

// 제네릭 타입 클래스 -> 모든 타입
class Observable<T> {
    
    var value: T? {
        didSet { //새로운 값이 저장된 직후에 호출됩니다.
            DispatchQueue.main.async {
                self.listener?(self.value)
            }
        }
    }
    
    init( _ value: T?) {
        self.value = value
    }
    
    private var listener: ((T?) -> Void)?
    
    func bind( _ listener: @escaping ((T?) -> Void)) {
        listener(value)
        self.listener = listener
    }
}
