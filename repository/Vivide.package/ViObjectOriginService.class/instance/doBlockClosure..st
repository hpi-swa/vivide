squeak - kernel
doBlockClosure: aBlockClosure

	^ aBlockClosure outerContext methodClass name, ' #', aBlockClosure outerContext selector