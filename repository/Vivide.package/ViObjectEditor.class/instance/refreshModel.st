as yet unclassified
refreshModel

	| currentIndex isExpanded |
	currentIndex := self contentTree selection currentIndex.
	isExpanded := false.

	self flag: #informationHiding. "mt: Better API needed?"
	currentIndex ifNotNil: [:index |
		isExpanded := self contentTree viewport isExpanded: index].
	
	self contentTree model update.
	self contentTree expandAllTopLevelNodes.
	isExpanded ifTrue: [self contentTree expandIndex: currentIndex].
	
	"self world ifNotNil: [
		ViAnimatedImageMorph
			flyOutOn: self
			with: UiSilkIcons arrowRefreshSmallIcon]."