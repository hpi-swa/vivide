as yet unclassified
externalCall

	| ctxt |
	ctxt := thisContext.
	[ctxt method methodClass theNonMetaClass == self class]
		whileTrue: [ctxt := ctxt sender].
	^ ctxt