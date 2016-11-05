

overwatch = {
  attack: {
      type: 'dps',
      team_info: {
          total_roster_spots: 6,
          dps_spots: 2
      },
      heros: [
          'Mcree',
          'Reaper',
          'Genji'
      ]
  },
  defense: {
      type: 'aoe',
      team_info: {
          total_roster_spots: 6,
          aoe_spots: 2
      },
      heros: [
          'Junkrat',
          'Mei',
          'Hanzo'
      ]
  },
  tank: {
      type: 'tank',
      team_info: {
          total_roster_spots: 6,
          tank_spots: 2
      },
      heros: [
      		'Roadhog',
      		'Zarya',
        	'D.Va'
      ]
  },
  support: {
  	  type: 'healer',
  	  team_info: {
  	  	  total_roster_spots: 6,
  	  	  healer_spots: 2
  	  },
  	  heros: [
  	  		'Lucio',
  	  		'Mercy',
  	  		'Ana'
  	  ]
  }
}

p overwatch[:defense][:heros][2]
p overwatch[:support][:heros].push('Zenyatta')
p overwatch[:tank][:heros][3] = 'Reinhardt'



