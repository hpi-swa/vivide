source code
setVisibleSourceCode
	
	self visibleSourceCode: (self fullSourceCode ifNil: [''] ifNotNil: [:code |
		code
			copyFrom: self fullSourceCodeInterval first
			to: self fullSourceCodeInterval last]).