football_team = {
  offense: {
    type: 'skill positions',
    team_info: {
      total_roster_spots: 11,
      num_skill_positions: 4
    },
    positions: [
      'Running Back',
      'Wide Reciever',
      'Quarterback'
    ]
  },
  defense: {
    type: 'skill positions',
    team_info: {
      total_roster_spots: 11,
      num_skill_positions: 4
    },
    positions: [
      'Cornerback',
      'Cornerback',
      'Free Safety'
    ]
  }
}

p football_team[:offense][:positions][0]
p football_team[:offense][:positions].push('Wide Reciever')
p football_team[:defense][:positions][3] = 'Strong Safety'
