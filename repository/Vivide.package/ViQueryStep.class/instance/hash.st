comparing
hash

	^ ((super hash
		bitXor: self id hash)
		bitXor: (self next ifNotNil: [:s | s id]) hash)
		bitXor: self definition hash