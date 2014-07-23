accessing - properties
currentIcon: aForm

	self ui iconBtn
		setProperty: #originalIcon toValue: aForm;
		icon: (aForm ifNil: [ViIcons blankIcon]).
	
	"Synch both iconic buttons."
	self ui detailsBox visible
		ifFalse: [self ui detailsBtn icon: (aForm ifNil: [UiFugueIcons selectionIcon])].