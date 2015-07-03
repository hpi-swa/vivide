as yet unclassified
test06ConvertList

	(ViScriptPart convertList: {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num / 2] -> {#inputKind -> Integer. #outputKind -> Fraction}.
		#identity})
	in: [:query |
		self
			assert: query steps size = 4;
			assert: (query steps allSatisfy: [:step | step next notNil
				or: [step id = #identity]]);
			assert: query steps second isPropertyExtraction;
			deny: query steps last isPropertyExtraction].