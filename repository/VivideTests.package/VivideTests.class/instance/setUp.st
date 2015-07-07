running
setUp

	super setUp.

	world := PasteUpMorph newWorldForProject: nil.
	world
		extent: 1024@768;
		color: Color blue;
		viewBox: (0@0 extent: world extent).

	profile := ViProfile newMinimal.

	"Customized opening..."
	vivide := VivideLight basicNew
		profile: profile;
		initialize;
		yourself.
	vivide openInWorld: world.
	vivide initializeSystemChangeNotifications.