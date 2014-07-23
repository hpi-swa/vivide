tests
test05Bindings

	| bindings  copy |
	bindings := Dictionary new.
	
	bindings
		at: #context put: (ViQueryContext new contents: #());
		at: #term put: (ViQueryContext new contents: 'smalltalk');
		at: #threshold put: (ViQueryContext new contents: 40).
	
	"This is how to copy."
	copy := Dictionary new.
	bindings keysAndValuesDo: [:key :value |
		copy at: key put: value copy].
	
	#(context term threshold) do: [:symbol |
		self assert: (bindings at: symbol) ~~ (copy at: symbol)].