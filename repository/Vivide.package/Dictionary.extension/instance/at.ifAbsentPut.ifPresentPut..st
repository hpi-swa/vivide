*vivide
at: key ifAbsentPut: startBlock ifPresentPut: nextBlock
	"(c) 2020 Basti Kruck und Marcel Taeumel. :-)"
	
	(self includesKey: key) ifFalse: [
		^ self at: key put: startBlock value].
	
	^ self
		at: key
		put: (nextBlock value: (self at: key))