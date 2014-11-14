as yet unclassified
test06ConvertList

	(ViScriptPart convertList: {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num / 2] -> {#inputKind -> Integer. #outputKind -> Fraction}.
		#iconAndLabel})
	in: [:query |
		self
			assert: query steps size = 4;
			assert: (query steps allSatisfy: [:step | step next notNil
				or: [step definition id = #iconAndLabel]]);
			assert: query steps second isPropertyExtraction;
			assert: query steps last isTransformStep].