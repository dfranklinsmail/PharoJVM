commands
onCommand2: me command: command label: commandLabel args: args
" e.g. from page 85"
	self scope: {
		org bukkit entity.
		org bukkit util.
		org bukkit Effect.
		org bukkit Material.
		org bukkit Sound.
	 } do: [: scope |
		(commandLabel equalsIgnoreCase: 'lavavision') ifTrue: [
			(me isKindOf: scope Player) ifTrue: [
				(scope BlockIterator new: me with: 100) do: [: b |
					me playEffect: b getLocation effect: scope MOBSPAWNER_FLAMES ignore: nil.
					b getType = scope AIR ifFalse: [
						b setType: scope LAVA.
						me playSound: b getLocation sound: scope ENTITY_ENDERDRAGON_FIREBALL_EXPLODE
							 volume: 1.0 pitch: 0.5.
						^ true
	]]]]].
	^ false