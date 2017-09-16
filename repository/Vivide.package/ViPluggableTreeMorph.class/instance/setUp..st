initialization
setUp: script

	self treeMorph borderWidth: (script valueOfProperty: #borderWidth ifAbsent: [1]).

	"Columns only if equal number in all tree levels.."	
	script isHomogeneousRelaxed
		ifFalse: [self treeMorph columns: #()]
		ifTrue: [
			| columns |
			columns := Array new: script maxPropertyCount.
	
			columns at: 1 put:
				[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
		
			self treeMorph columns: columns].