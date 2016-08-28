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
    //Time: O(N)
    //Space: O(N)
    class func fibonacci(n: Int) -> UInt64 {
        
        var fibonacci: [UInt64] = [0,1]
        for i in 2...n {
            fibonacci.append(fibonacci[i-1]+fibonacci[i-2])
        }
        return fibonacci[n]
    }
    
    //MARK: GCD (Greatest Common Divisor)
    //Time: O(Log(ab))
    //Space: O(1)
    class func gcd(_ a: UInt64, _ b: UInt64) -> UInt64 {
        
        if b == 0 { return a }
        return gcd(b, a%b)
    }
}
