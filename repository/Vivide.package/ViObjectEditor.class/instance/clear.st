memento - cleanup
clear
	"Selections will be restored automatically be the view. Just keep the current index expanded."
	
	| currentIndex isExpanded |
	currentIndex := self contentTree selection currentIndex.
	isExpanded := false.

	self flag: #informationHiding. "mt: Better API needed?"
	currentIndex ifNotNil: [:index |
		isExpanded := self contentTree viewport isExpanded: index].
	
	self contentTree model update.
	self contentTree expandAllTopLevelNodes.
	isExpanded ifTrue: [self contentTree expandIndex: currentIndex].