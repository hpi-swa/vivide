actions
chooseMostAppropriateQuery

	| defaultQueryCheck |
	self flag: #magicNumber. "mt: Make it programmable and not fixed to an ID."
	self currentQuery ifNil: [^ self].
	self currentQuery id == #artifacts
		ifFalse: [^ self].
	
	VivideLight useClassicMode
		ifTrue: [^ self].
	
	defaultQueryCheck := {
		[:o | o isBehavior].
		[:o | o isKindOf: PackageInfo].
		[:o | o isKindOf: ViObjectHistory].
		[:o | o isKindOf: MessageTally]
	}.

	(self objects size = 1 and: [defaultQueryCheck anySatisfy: [:chk | chk value: self objects first]])
		ifTrue: [self currentQuery: self mostAppropriateQuery].