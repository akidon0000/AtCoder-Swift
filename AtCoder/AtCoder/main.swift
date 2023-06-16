//
//  main.swift
//  AtCoder
//
//  Created by Akihiro Matsuyama on 2023/06/16.
//

import Foundation

func main() {
    var scanner = Scanner()
    let H = scanner.read(Int.self)
    let W = scanner.read(Int.self)
    let S = scanner.read(String.self, count: H).map(Array.init)
    var minX = Int.max
    var maxX = Int.min
    var minY = Int.max
    var maxY = Int.min
    for i in 0 ..< H {
        for j in 0 ..< W {
            if S[i][j] == "#" {
                minY = min(minY, i)
                maxY = max(maxY, i)
                minX = min(minX, j)
                maxX = max(maxX, j)
            }
        }
    }
    for i in minY ... maxY {
        for j in minX ... maxX {
            if S[i][j] == "." {
                print(i + 1, j + 1)
            }
        }
    }
}

main()

/**
 let str = scanner.read(String.self)
 let int = scanner.read(Int.self)
 let lists = scanner.read(Int.self, cont: {配列の大きさ})
 let field = scanner.read(String.self, count: {2次配列の大きさ}).map(Array.init)
 */
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
