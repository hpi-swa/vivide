accessing - kernel
id

	^ id ifNil: [id := UUID new asString asSymbol]