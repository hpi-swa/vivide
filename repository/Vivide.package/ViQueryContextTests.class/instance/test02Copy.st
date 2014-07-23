tests
test02Copy

	| obj copy |
	obj := Morph new.
	sut contents: obj.
	copy := sut copy.
	self
		assert: sut ~~ copy;
		assert: sut contents == copy contents.