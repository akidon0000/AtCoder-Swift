import Foundation

func main() {
    var scanner = Scanner()
    let N = scanner.read(Int.self)
    let lists = scanner.read(String.self, count: N*3)

    var points:[String: Int] = [:]
    var newLists:[String] = []
    for item in lists{
        if points.keys.contains(item) {
            points[item]! += 1
            if points[item] == 2 {
                newLists.append(item)
            }
        }else{
            points.updateValue(1, forKey: item)
        }
    }
    for item in newLists {
        print(item + " ", terminator: "")
    }
}

main()

// let str = scanner.read(String.self)
// let int = scanner.read(Int.self)
// let lists = scanner.read(String.self, count: {配列数})
// let field = scanner.read(String.self, count: {2次配列の大きさ}).map(Array.init)
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
