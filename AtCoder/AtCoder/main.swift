import Foundation

func main() {
    var scanner = Scanner()
    let N = scanner.read(Int.self)
    let fields = scanner.read(String.self, count: N).map(Array.init)

    for i in 0..<N{
        var ans = ""
        for j in 0..<N{
            if i == 0{
                if j == 0{
                    ans += fields[1][0].description
                }else{
                    ans += fields[i][j-1].description
                }
            }else if i == N-1{
                if j == N-1{
                    ans += fields[N-2][N-1].description
                }else{
                    ans += fields[N-1][j+1].description
                }
            }else{
                if j == 0 {
                    ans += fields[i+1][0].description
                }else if j == N-1{
                    ans += fields[i-1][N-1].description
                }else{
                    ans += fields[i][j].description
                }
            }
        }

        print(ans)
    }
}

main()

// let str = scanner.read(String.self)
// let int = scanner.read(Int.self)
// let lists = scanner.read(String.self, count: {配列数})
// let fields = scanner.read(String.self, count: {2次配列の大きさ}).map(Array.init)
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
