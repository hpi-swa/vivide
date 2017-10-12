as yet unclassified
postLoad

	UserInterfaceTheme allSubInstancesDo: [:uit |
		"Underline the pattern for class-side methods."
		#(undefinedKeyword undefinedBinary undefinedUnary patternKeyword patternBinary patternUnary) do: [:sym | | spec |
			"See SHTextStylerST80 for spec definition."
			spec := (uit get: sym for: #SHTextStylerST80) asList.
			spec size > 1 ifTrue: [spec at: 2 put: (spec at: 2) asList].
			spec isEmpty ifTrue: [spec := {nil}]. "color hint"
			spec size = 1 ifTrue: [spec := spec, {{}}]. "text emphasis"
			spec at: 2 put: ((spec at: 2), {TextEmphasis underlined}).
			uit
				set: sym for: #ViTextStyler to: spec;
				set: sym for: #ViTextStylerForClass to: spec]].
	ViTextStyler applyUserInterfaceTheme.
	ViTextStylerForClass applyUserInterfaceTheme.

	
	TextEditor allSubclassesDo: [:e | e initialize].
	
	(Smalltalk at: #ViToolSet ifAbsent: [])
		ifNotNil: [:ts | ToolSet default: ts].

	VivideLight profiles ifEmpty: [
		VivideLight profiles add: ViProfile newMinimal].