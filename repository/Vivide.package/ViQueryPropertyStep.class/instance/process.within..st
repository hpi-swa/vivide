processing
process: someObjects within: aContext

	| in |
	in := self inputCount.
	
	self assert: definition wantsEachObjectSeparately.
	^ someObjects collect: [:obj |
		(in > 1
			ifFalse: [definition block cull: obj cull: aContext]
			ifTrue: [definition block valueWithArguments: obj])
		in: [:property | self convertProperties:
			(property isCollection & property isString not
				ifTrue: [property "[:obj | {#text -> obj asString. #icon -> obj asMorph}]"]
				ifFalse: [property isVariableBinding
					ifTrue: [{property} "[:obj | #text -> obj asString]"]
					ifFalse: [{#text -> property} "[:obj | obj name] or [:obj | obj size]"]])]]