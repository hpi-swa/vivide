actions
changeProtocolFor: someMethodReferences

	(self hasUnacceptedChanges and: [self ensureProtocol not])
		ifTrue: [^ self].

	someMethodReferences do: [:ref |
		ref actualClass ~~ self theClass
			ifTrue: [self
				warn: ('Invalid class: ', (ViLabelStringService doObject: ref)) asHtmlText
				for: self ui nameEdit]
			ifFalse: [(protocol classify: ref) ifTrue: [
				ViAnimatedImageMorph
					flyOutOn: self
					with: UiFugueIcons tickIcon]]].