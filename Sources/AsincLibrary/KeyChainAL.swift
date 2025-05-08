// The Swift Programming Language
// https://docs.swift.org/swift-book
import KeychainAccess

public protocol KeyChainAL {
    func setKC(key: String, value: String) -> Bool
    func getKC(key: String, value: String) -> String?
    func removeKC(key: String, value: String) -> Bool
}

public struct KeychainManager: KeyChainAL {
    static var shared: KeyChainAL {
        return KeychainManager()
    }
    
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

// Alternativa sin manager
public struct KeyChain {
    
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
