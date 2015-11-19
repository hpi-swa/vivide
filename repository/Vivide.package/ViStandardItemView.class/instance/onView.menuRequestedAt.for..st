as yet unclassified
onView: view menuRequestedAt: point for: node

	"ViPane chooseQueryFor: (node at: #object)."
	self flag: #activeOrganizer. "mt: How can be use the organizer from the script that produced this view?"
	ViPane chooseQueryFor: (view selectedNodes collect: [:n | n at: #object]). 