# from web3 import Web3
import hashlib

# Step 1: Lower case and pad the approval address
approval_address = "DEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF"
storage_slot = '0000000000000000000000000000000000000000000000000000000000000000'

# approval_address = "5B38Da6a701c568545dCfcB03FcB875f56beddC4"
# storage_slot = '0000000000000000000000000000000000000000000000000000000000000000'

lowercase_address = approval_address.lower()
padded_address = lowercase_address.rjust(64, '0')


print(len(padded_address), len(storage_slot))
# Step 2: Append with the storage slot of the mapping variable
combined_data = padded_address + storage_slot


print(combined_data)
# Step 3: Keccak256
# keccak256_hash = Web3.keccak(hexstr=combined_data)

# print(keccak256_hash.hex())



