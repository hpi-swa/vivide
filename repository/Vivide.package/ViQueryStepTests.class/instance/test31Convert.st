as yet unclassified
test31Convert

	(ViQueryStep convert: '[:num | num * num]') in: [:query |
		self
			assert: query isTransformStep;
			assert: query definition mapType = #each;
			assert: query definition inputKind = Object;
			assert: query definition outputKind = Object].
	(ViQueryStep convert: #defaultProperties) in: [:query |
		self
			assert: query id = #defaultProperties;
			assert: query steps size = 2;
			assert: (query steps allSatisfy: [:step | step isPropertyStep])].
	(ViQueryStep convert: [:num | num / 2] -> {Integer.Fraction}) in: [:query |
		self
			assert: query isTransformStep;
			assert: query definition mapType = #each;
			assert: query definition inputKind = Integer;
			assert: query definition outputKind = Fraction].
		
	"Fall-back to definitions if such an ID is given. Create a new query around it."
	(ViQueryStep convert: #iconAndLabel) in: [:query |
		self
			assert: query id ~= #iconAndLabel;
			assert: query definition == (ViQueryOrganizer default definitionById: #iconAndLabel)].