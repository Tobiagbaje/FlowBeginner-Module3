// Define the contract for NFTStruct
pub contract NFTStruct {

    // Define the structure for a Person
    pub struct NFT {
        pub let id: UInt64
        pub let name: String
        pub let owner: Address

        // Constructor for creating a Person
        init(id: UInt64, name: String, owner: Address) {
            self.id = id
            self.name = name
            self.owner = owner
        }
    }

    // Store People using their Id as keys in a dictionary
    pub var nfts: {UInt64: NFT}

    // Initialize the contract with an empty people dictionary
    init() {
        self.nfts = {}
    }

    // Add a Person to the dictionary using its Id as the key
    pub fun createNFT(id: UInt64, name: String, owner: Address) {
        let nft = NFT(id: id, name: name, owner: owner)
        self.nfts[id] = nft
    }

    // Retrieve a Person by their Id from the dictionary
    pub fun getNFT(id: UInt64): NFT? {
        return self.nfts[id]
    }
}

