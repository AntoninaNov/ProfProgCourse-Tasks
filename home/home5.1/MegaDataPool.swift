import Foundation

class MegaDataPool {
    private var pool: [MegaData]
    private var inUse: [Bool]

    init(poolSize: Int) {
        self.pool = Array(repeating: MegaData(), count: poolSize)
        self.inUse = Array(repeating: false, count: poolSize)
    }

    func acquire() -> MegaData? {
        for (index, isUsed) in inUse.enumerated() {
            if !isUsed {
                inUse[index] = true
                return pool[index]
            }
        }
        return nil
    }

    func release(_ object: MegaData) {
        if let index = pool.firstIndex(where: { $0 === object }) {
            inUse[index] = false
            pool[index].reset()
        }
    }

    func size() -> Int {
        return pool.count
    }

    func usedSize() -> Int {
        return inUse.filter { $0 }.count
    }
}
