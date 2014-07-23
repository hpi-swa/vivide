evaluation
parse

	| helper |
	helper := ViParserHelper new
		text: self theText;
		view: self.
	
	[[[[
		Parser new
			parse: self theText asString readStream
			class: self theClass
			noPattern: false
			notifying: helper
			ifFail: [^ false]
	]
		on: UnusedVariable
		do: [:err | 
			self informationSent: ('Unused Variable <b>', (err instVarNamed: #name), '</b> found in ', self theClass asString, ' \>\> ', self selector asString) asHtmlText.
			err resume: false]]
		on: UnknownSelector
		do: [:err | 
			self notify: err class name at: helper selection first in: self theText.
			err resume: helper selectedText asString asSymbol]]
		on: UndefinedVariable
		do: [:err |
			self notify: err class name at: helper selection first in: self theText.
			err resume: true]]
		on: ParserNotification "Manual catch to disable interactive compilation."
		do: [:err |
			self warningSent: 'Parsing failed: ', self theClass asString, ' >> ', self selector asString.			
			self notify: err class name at: helper selection first in: self theText.
			self select: helper selection.
			^ false].
		
	^ true