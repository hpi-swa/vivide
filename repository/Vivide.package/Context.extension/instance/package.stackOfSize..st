*vivide
package: name stackOfSize: limit 
	"Answer an OrderedCollection of the top 'limit' contexts
	 on the receiver's sender chain."

	| stack ctxt |
	stack := OrderedCollection new.
	stack addLast: (ctxt := self).
	
	[ctxt := ctxt sender. (ctxt ~~ nil) and: [stack size < limit]]
		whileTrue: [
			(ctxt isExecutingBlock not
				and: [(PackageOrganizer default
					packageOfClass: (ctxt receiver class theNonMetaClass)
					ifNone: []) = (PackageInfo named: name)])
			ifTrue: [stack addLast: ctxt]].

	^ stack