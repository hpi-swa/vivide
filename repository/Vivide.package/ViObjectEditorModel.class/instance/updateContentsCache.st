as yet unclassified
updateContentsCache

	contentsCache := Dictionary new.
	groups := OrderedCollection new.
	
	(self baseObject respondsTo: #explorerContents) ifTrue: [
		contentsCache at: #all put: self base contents.
		groups := #(all).
		^ self].
	
	self base contents do: [:wrapper | | className |
		className := (wrapper parent item value class "mt: #withoutListWrapper not workin ghere.."
			withAllSuperclasses detect: [:cls | cls instVarNames includes: wrapper itemName] ifNone: ['Dynamic Slots']) name.
		(contentsCache at: className ifAbsentPut: [groups add: className. OrderedCollection new])
			add: wrapper]