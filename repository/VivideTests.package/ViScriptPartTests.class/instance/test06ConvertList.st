tests
test06ConvertList

	self assert: #identityTest asScript notNil.

	(ViScriptPart convertList: {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num / 2] -> {#inputKind -> Integer. #outputKind -> Fraction}.
		#identityTest})
	in: [:query | | orga |
		orga := query organization.
		self
			assert: query steps size = 4;
			assert: (query steps allSatisfy: [:step | step next notNil
				or: [step isReference]]);
			assert: query steps second isPropertyExtraction;
			deny: query steps last isPropertyExtraction;
			assert: (query steps allSatisfy: [:step | step organization == orga and: [step definition organization == orga]])].