//
//  main.swift
//  AtCoder
//
//  Created by Akihiro Matsuyama on 2023/06/16.
//

import Foundation

func main() {
    var scanner = Scanner()
    var N = 64
    var list = scanner.read(String.self, count: N)
    var newList = list.reversed()

    var niSinnsuu = ""
    for str in newList {
        niSinnsuu += str
    }
    var ans = Int(niSinnsuu, radix: 2)!

    print(ans)

}

main()

// let str = scanner.read(String.self)
// let int = scanner.read(Int.self)
// let lists = scanner.read(String.self, count: {配列数})
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
