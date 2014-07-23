memento - cleanup
close

	self
		unsubscribeFromNotifiers;
		clear; "Own cleanup"
		aboutToClose; "Chance for dependent cleanup"
		delete; "Morphic - remove from world"
		closed. "Chance for dependent post-mortem cleanup"