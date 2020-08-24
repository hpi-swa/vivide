as yet unclassified
showNoInput

	| d |
	d := self decorationNamed: #message ifAbsent: [self addMessageDecoration].
	
	d submorphs first icon: (d valueOfProperty: #helpIcon).

	d submorphs second contents: (
		Text
			string: 'No input objects.'
			attribute: TextColor white).
			
	d comeToFront; show.