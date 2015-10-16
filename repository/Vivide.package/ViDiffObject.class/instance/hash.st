comparing
hash

	^ (self class hash bitXor: self primarySource hash) bitXor: self secondarySource hash