as yet unclassified
postLoadFonts

	| normal list title small mono |	
	UiFont installAllFonts.
	
	"Setup fonts."
	normal := StrikeFont familyName: #'Bitmap Segoe UI' pointSize: 10.
	list := StrikeFont familyName: #'Bitmap Segoe UI' pointSize: 9.
	small := StrikeFont familyName: #'Bitmap DejaVu Sans' pointSize: 7.
	mono := StrikeFont familyName: #'Bitmap Envy Code R' pointSize: 10.
	title := StrikeFont familyName: #'Bitmap Segoe UI Light' pointSize: 14.
	Preferences
		setSystemFontTo: normal;
		setListFontTo: list;
		setHaloLabelFontTo: mono;
		setMenuFontTo: list;
		setWindowTitleFontTo: title;
		setBalloonHelpFontTo: small;
		setCodeFontTo: mono;
		setButtonFontTo: list.