as yet unclassified
test32ConvertList

	(ViQueryStep convertList: {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num / 2] -> {Integer.Fraction}.
		#iconAndLabel})
	in: [:query |
		self
			assert: query steps size = 4;
			assert: (query steps allSatisfy: [:step | step next notNil
				or: [step definition id = #iconAndLabel]]);
			assert: query steps second isPropertyStep;
			assert: query steps last isTransformStep "not recognized as property extraction"].