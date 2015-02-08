accessing - object
object: aText

	aText ifNil: [
		self object: self defaultMemo.
		self artifact selectAll.
		^ self].

	text := aText.
	self artifact theText: aText copy.