as yet unclassified
doRecursively: aBlock

	self associationsDo: [:assoc |
		aBlock value: assoc.
		assoc value ifNotNil: [:a | a doRecursively: aBlock]].