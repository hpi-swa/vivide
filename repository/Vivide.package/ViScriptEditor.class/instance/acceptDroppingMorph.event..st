as yet unclassified
acceptDroppingMorph: aTransferMorph event: evt
	"Connect dropped script."
	
	| script |
	script := aTransferMorph passenger.
	script next: self object.

	self flag: #informationHiding. "mt: Use script change notifier?"
	aTransferMorph source updateToolbars.