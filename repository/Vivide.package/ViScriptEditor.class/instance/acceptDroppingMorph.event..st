drag/drop
acceptDroppingMorph: aTransferMorph event: evt
	"Connect dropped script."
	
	| script reference |
	script := aTransferMorph passenger.
	
	reference := self object asReference.
	reference adoptOrganization: script organization.
	
	script next: reference.
	aTransferMorph source requestArtifact: script next.  