*vivide
openScript: symbolBlockOrScript with: someObjects
	"Convenience function to use this script's organization for finding or creating the script."

	^ ViActiveScriptOrganizer
		value: self organization
		during: [symbolBlockOrScript openScriptWith: someObjects].   