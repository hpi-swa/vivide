updating
updateButtons

	self ui serverBtn checked: objectGate isServer.
	objectGate isConnected
		ifTrue: [self ui connectBtn
			clear;
			icon: UiFugueIcons plugConnectIcon;
			checked: true]
		ifFalse: [self ui connectBtn
			clear;
			icon: UiFugueIcons plugDisconnectIcon;
			checked: false].
		
	objectGate isWaitingForConnection
		ifTrue: [self ui connectBtn
			checked: true;
			setIcon: UiDiagonaIcons icon0321Small]
		ifFalse: [self ui connectBtn
			checked: false;
			clear].