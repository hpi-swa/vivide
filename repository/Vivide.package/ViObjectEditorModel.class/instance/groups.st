item model - hierarchy
groups
	
	^ groups ifNil: [self isRoot ifTrue: [#(root)] ifFalse: [
		self updateContentsCache.
		groups]]