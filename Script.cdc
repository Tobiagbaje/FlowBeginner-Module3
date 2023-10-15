// Import NFTStruct Contract
import NFTStruct from 0x05

pub fun main(id: UInt64): NFTStruct.NFT? { 
  return NFTStruct.getNFT(id: id)!
}

