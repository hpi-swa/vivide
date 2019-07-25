actions - open
openScript: aScript withObjects: someObjects

	someObjects do: #retain.
	^ ViPane openScript: aScript withObjects: someObjects