public extension Solution {
    
    /// <doc:71.----->
    ///
    /// - ⌛️：100%
    /// - 🫙：61%
    func simplifyPath(_ path: String) -> String {
        var result: [String] = []
        let separator: Character = "/"
        let splits = path.split(separator: "/")
        
        for split in splits {
            switch split {
            case "", ".": break
            case "..":
                let _ = result.popLast()
            default: result.append(String(split))
            }
        }
        
        return (path.starts(with: String(separator)) ? String(separator) : "")
            + result.joined(separator: String(separator)).description
    }
}
