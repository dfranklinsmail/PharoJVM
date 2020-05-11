commands
onCommand3: me command: command label: commandLabel args: args
" e.g. from page 85"
	self scope: { org bukkit entity. org bukkit util. org bukkit Effect. org bukkit Material. org bukkit Sound }
		do: [: entity : util : effect : material : sound |
			(commandLabel equalsIgnoreCase: 'lavavision') ifTrue: [
				(me isKindOf: entity Player) ifTrue: [
					(util BlockIterator new: me with: 100) do: [: b |
						me playEffect: b getLocation effect: effect MOBSPAWNER_FLAMES ignore: nil.
						b getType = material AIR ifFalse: [
							b setType: material LAVA.
							me playSound: b getLocation sound: sound ENTITY_ENDERDRAGON_FIREBALL_EXPLODE
								 volume: 1.0 pitch: 0.5.
							^ true
	]]]]].
	^ false