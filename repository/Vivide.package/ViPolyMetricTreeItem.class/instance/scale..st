as yet unclassified
scale: float

	scale ifNotNil: [
		self itemMorph extent: (self itemMorph extent / scale) rounded.
		self layoutInset: (self layoutInset / scale) rounded.
		self cellInset: (self cellInset / scale) rounded].

	scale := scale * float.

	scale ifNotNil: [
		self itemMorph extent:( self itemMorph extent * scale) rounded.
		self layoutInset: (self layoutInset * scale) rounded.
		self cellInset: (self cellInset * scale) rounded].