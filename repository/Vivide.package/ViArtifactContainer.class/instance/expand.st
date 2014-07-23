geometry - actions
expand
	
	self
		removeAllMorphs;
		addAllMorphs: ({
			self artifact.
			self resizeHandle} reject: [:o | o isNil]);
		expanded.