accessing
reference

	self theClass ifNil: [^ nil].
	self selector ifNil: [^ nil].

	^ MethodReference
		class: self theClass
		selector: self selector