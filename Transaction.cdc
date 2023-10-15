// Import NFTStruct Contract
import NFTStruct from 0x05

// Transaction to add a person
transaction(id: UInt64, name: String, owner: Address) {
    
    prepare(acct: AuthAccount) {}

    execute {
      NFTStruct.createNFT(id: id, name: name, owner: owner)
      log("NFT created Successfully")
    }
}
