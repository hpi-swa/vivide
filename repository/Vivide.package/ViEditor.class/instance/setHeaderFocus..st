focus
setHeaderFocus: aBoolean
	
	aBoolean
		ifTrue: [ 
			"self headerColor: (Color r: 0.2 g: 0.5 b: 1.0)."
			self ui headerBtn text: ('<font color="#000000"><b>', self ui headerBtn text asString, '</b></font>') asHtmlText]
		ifFalse: [
			"self headerColor: (Color gray: 0.85)."
			self ui headerBtn text: ('<font color="#333333">', self ui headerBtn text asString, '</font>') asHtmlText	]