interpreting - private
interpretGroupStep
	
	| regroupedObjects groupChanges updatedContexts |
	self assert: self currentStep isGroupStep.
	
	regroupedObjects := Dictionary new.
	groupChanges := Dictionary new. "maps from new group to old group"
	objects keysAndValuesDo: [:group :groupedObjects |
		(step process: groupedObjects within: (contexts at: group)) do: [:groupToObject |
			groupChanges at: groupToObject key put: group.
			(regroupedObjects
				at: groupToObject key ifAbsentPut: [OrderedCollection new])
				add: groupToObject value]].
			
	"Update context copies."
	updatedContexts := Dictionary new.
	groupChanges keysAndValuesDo: [:newGroup :oldGroup |
		"Group merge just uses last context."
		updatedContexts at: newGroup put: (contexts at: oldGroup) copy].
	contexts := updatedContexts.
			
	"Store new grouped children."
	objects := regroupedObjects.
	groups := regroupedObjects keys asOrderedCollection.