evaluation
compile
	
"	[
		Compiler evaluate: self theText asString.
		^ true
	]
		on: SyntaxErrorNotification
		do: [:err |
			self warningSent: 'Failed. ', (err asString withNoLineLongerThan: 30).
			self textMorph editor notify: err errorMessage at: err location in: err messageText.
			^ false]."
	^ true