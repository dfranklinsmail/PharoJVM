commands
onCommand: me command: command label: commandLabel args: args
" e.g. from page 34"
	(commandLabel equalsIgnoreCase: 'hello') ifTrue: [
		org bukkit plugin Plugin getServer
			broadCastMessage: '[Server] That''sss a very niccce EVERYTHING you have there'.
		^ true
	].
	^ false