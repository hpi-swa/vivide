actions - results
showScriptsAt: point for: node

	"ViPane chooseQueryFor: (node at: #object)."
	self flag: #activeOrganizer. "mt: How can be use the organizer from the script that produced this view?"
	ViPane chooseQueryFor: (resultList selectedNodes collect: [:n | n at: #object]). 