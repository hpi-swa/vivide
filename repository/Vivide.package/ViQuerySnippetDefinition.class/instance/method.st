accessing
method

	^ method ifNil: [method := Compiler new
		compiledMethodFor: self sourceCode
		in: nil to: nil "mt: No access to instance variables or temporaries allowed."
		notifying: nil
		ifFail: nil
		logged: false]