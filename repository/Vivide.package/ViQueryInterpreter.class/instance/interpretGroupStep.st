deprecated
interpretGroupStep
	
	| regroupedObjects groupChanges updatedContexts |
	self assert: self currentStep isGroupStep.
	
	regroupedObjects := Dictionary new.
	groupChanges := Dictionary new. "maps from new group to old group"
	objects keysAndValuesDo: [:group :groupedObjects |
		(step process: groupedObjects) do: [:groupToObject |
			groupChanges at: groupToObject key put: group.
			(regroupedObjects
				at: groupToObject key ifAbsentPut: [OrderedCollection new])
				add: groupToObject value]].
			
	"Store new grouped children."
	objects := regroupedObjects.
	groups := regroupedObjects keys asOrderedCollection.