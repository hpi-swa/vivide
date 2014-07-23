comparing
hash

	^ ((super hash
		bitXor: self mapType hash)
		bitXor: self inputKind hash)
		bitXor: self outputKind hash