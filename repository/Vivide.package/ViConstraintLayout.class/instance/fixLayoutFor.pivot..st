private
fixLayoutFor: morphs pivot: morph

	morphs ifEmpty: [^ self].

	self
		alignNeighbours: morphs for: morph;
		snapNeighbours: morphs for: morph.
	
	self fixLayoutFor: morphs allButFirst pivot: morphs first.      