// The Swift Programming Language
// https://docs.swift.org/swift-book
import KeychainAccess

public protocol KeyChainAL {
    func setKC(key: String, value: String) -> Bool
    func getKC(key: String, value: String) -> String?
    func removeKC(key: String, value: String) -> Bool
}

public struct KeyChain: KeyChainAL {
    
    public init() {}
    
    public func setKC(key: String, value: String) -> Bool {
        saveKC(key: key, value: value)
    }
    
    public func getKC(key: String, value: String) -> String? {
        loadKC(key: key)
    }
        
    public func removeKC(key: String, value: String) -> Bool {
        deleteKC(key: key)
    }
    
}
