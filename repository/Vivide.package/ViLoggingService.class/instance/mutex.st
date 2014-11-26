accessing - private
mutex

	^ mutex ifNil: [mutex := Mutex new]