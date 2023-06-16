//
//  main.swift
//  AtCoder
//
//  Created by Akihiro Matsuyama on 2023/06/16.
//

import Foundation

func main() {
    var scanner = Scanner()
    let p = scanner.read(String.self)
    let q = scanner.read(String.self)
    let X = [
        "A": 0,
        "B": 3,
        "C": 4,
        "D": 8,
        "E": 9,
        "F": 14,
        "G": 23,
    ]
    print(abs(X[q]! - X[p]!))
}

main()

struct Scanner {
    private var tokens = [String]()
    private var index = 0
    
    mutating func read<T>(_ type: T.Type) -> T where T: LosslessStringConvertible {
        T(read())!
    }
    
    mutating func read<T>(_ type: T.Type, count n: Int) -> [T] where T: LosslessStringConvertible {
        (0 ..< n).map { _ in read(type) }
    }
    
    private mutating func read() -> String {
        while tokens.count == index {
            tokens = readLine()!.split(separator: " ").map(\.description)
            index = 0
        }
        defer {
            index += 1
        }
        return tokens[index]
    }
}
