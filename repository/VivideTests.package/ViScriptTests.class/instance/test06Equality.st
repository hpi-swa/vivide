tests
test06Equality

	| spec |
	spec := {
		[:num | num * num] -> { #id -> #test06Equality }.
		[:num | #text -> num asString] -> { #color -> #blue }.
	}.
	
	self
		deny: spec asScript = spec asScript; "Squeak object identity only!"
		assert: spec asScript id equals: spec asScript id;
		assert: spec asScript sourceCode equals: spec asScript sourceCode.