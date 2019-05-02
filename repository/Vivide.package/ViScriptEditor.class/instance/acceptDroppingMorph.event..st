drag/drop
acceptDroppingMorph: aTransferMorph event: evt
	"Connect dropped script."
	
	| sourceStep targetStep reference |
	sourceStep := aTransferMorph passenger.
	targetStep := self object.
	
	sourceStep afterAdd: targetStep.
