opening
openScript: symbolBlockOrScript with: someObjects
	"Convenience function to use this script's organization for finding or creating the script."

	^ ViActiveOrganizer
		value: self organization
		during: [symbolBlockOrScript openScriptWith: someObjects].   