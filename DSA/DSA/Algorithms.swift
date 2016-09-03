//
//  Algorithms.swift
//  ADS
//
//  Created by Burhanuddin Sunelwala on 8/28/16.
//  Copyright © 2016 TFT. All rights reserved.
//

import Foundation

class Algorithm {
    
    //MARK: Fibonacci
    //Time: O(n)
    //Space: O(1)
    class func fibonacci(n: Int) -> UInt64 {
        
        if n <= 1 { return UInt64(n) }
        var currentValue: UInt64 = 1
        var previousValue: UInt64 = 0
        for _ in 2...n {
            
            let temp = currentValue
            currentValue += previousValue
            previousValue = temp
        }
        return currentValue
    }
    
    //MARK: GCD (Greatest Common Divisor)
    //Time: O(log(ab))
    //Space: O(1)
    class func gcd(_ a: UInt64, _ b: UInt64) -> UInt64 {
        
        if b == 0 { return a }
        return gcd(b, a%b)
    }
    
    //MARK: LCM (Least Common Multiple)
    //Time: O(log(ab))
    //Space: O(1)
    class func lcm(_ a: UInt64, _ b:UInt64) -> UInt64 {
        return a*b/gcd(a,b)
    }
}
