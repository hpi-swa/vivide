as yet unclassified
acceptDroppingMorph: aTransferMorph event: evt
	"Connect dropped script."
	
	| script |
	script := aTransferMorph passenger.
	script next: self object asReference.
	aTransferMorph source requestArtifact: script next.  