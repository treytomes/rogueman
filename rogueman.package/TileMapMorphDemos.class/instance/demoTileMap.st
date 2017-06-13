demos
demoTileMap
	<script: 'self new demoTileMap'>
	
	| data map |
	data := #(
		'################'
		'#              #'
		'#              #'
		'#              #'
		'#     ##       #'
		'#      #       #'
		'#      ##      #'
		'#              #'
		'#       ########'
		'#######        #'
		'#              #'
		'#     ###      #'
		'#     ###      #'
		'#     ###      #'
		'#              #'
		'################'
	).
	
	map := TileMapMorph new.
	map data: data.
	map openInWorld.