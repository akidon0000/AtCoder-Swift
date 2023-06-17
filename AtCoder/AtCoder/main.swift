//
//  main.swift
//  AtCoder
//
//  Created by Akihiro Matsuyama on 2023/06/16.
//

import Foundation

func main() {
    var scanner = Scanner()
    var N = scanner.read(Int.self)
    var S = scanner.read(String.self)

    var array = Array(S)
    var ans = ""
    for i in 0..<N {
        ans += String(array[i])
        ans += String(array[i])
    }
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
