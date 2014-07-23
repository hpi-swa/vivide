updating
updateLayout

	self removeAllMorphs.
	
	self orientation = #horizontal ifTrue: [
		self
			hResizing: #spaceFill;
			vResizing: #rigid;
			listDirection: #topToBottom].
	
	self orientation = #vertical ifTrue: [
		self
			hResizing: #rigid;
			vResizing: #spaceFill;
			listDirection: #leftToRight].

	self addGrips.