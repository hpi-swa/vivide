evaluation
parse
	
	(RBParser parseExpression: self theText asString onError: [:msg :location |
		self warningSent: 'Parsing failed.'.
		self textMorph editor notify: msg at: location in: self theText.
		^ false]).

	 ^ true