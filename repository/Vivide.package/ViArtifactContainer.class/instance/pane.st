as yet unclassified
pane

	^ (self firstOwnerSuchThat: [:morph |
		morph class withAllSuperclasses anySatisfy: [:cls | cls includesTrait: TViObjectView]])
			ifNotNil: [:objectView | objectView pane]