as yet unclassified
removeHint: aMorph
	"Remove the hint where the given morph is inside."
	
	(aMorph firstOwnerSuchThat: [:m | m owner == hintBox]) delete.
	hintBox hasSubmorphs ifFalse: [hintBox hideFull].