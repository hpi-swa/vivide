actions
changePageTo: index

	ViArtifactToolbar hideAllToolbars.

	index == 1
		ifTrue: ["Input page."]
		ifFalse: ["Output page(s)." (self pages at: index) in: [:queryPage |
			queryPage queries ifEmpty: [
				"Implicit page initialization. Good?"
				queryPage queries: ViQueryOrganizer default orderedSteps].

			queryPage hasDeferredObjects ifTrue: [
				queryPage updateWithDeferredObjects.
				(self ui pageButtonGroup button: index) clear]]].

	"Show only the label for the selected query page."
	self ui pageButtonGroup submorphs allButFirst withIndexDo: [:btn :idx |
		(idx+1) = index
			ifTrue: [btn
				layoutInset: (0 @ -1 corner: 1 @ -2);
				buttonStyle: #textBesideIcon]
			ifFalse: [btn
				layoutInset: 0;
				buttonStyle: #iconOnly]].
	
	self ui stack currentIndex: index.
	self ui stack currentPage grabKeyboard.