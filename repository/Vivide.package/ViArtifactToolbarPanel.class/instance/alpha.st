accessing
alpha

	self hasContent ifFalse: [^ 0.0].

	^ alpha ifNil: [alpha := 0.0]