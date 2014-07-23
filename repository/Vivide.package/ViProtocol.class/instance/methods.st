accessing
methods

	^ (self theClass organization listAtCategoryNamed: self protocolname) collect: [:selector |
		MethodReference class: self theClass selector: selector]