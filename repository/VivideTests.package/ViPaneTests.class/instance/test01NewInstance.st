tests - construction
test01NewInstance

	| pane |
	pane := ViPane new.
	self
		assert: pane script isNil;
		assert: pane objects isEmpty;
		assert: pane view isNil;
		
		assert: pane knownScripts isEmpty;
		assert: Object equals: pane baseClass;

		assert: 0 equals: pane tupleSize;
		assert: 0 equals: pane tupleSizeDynamic;
		assert: 0 equals: pane tupleSizeInput;
		
		assert: pane selectedResults isEmpty;
		assert: pane allResults isEmpty.