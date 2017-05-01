# mandilco is a company that has few departments, vehicles and machines, here is its nested data:
mandilco = {
  departments: {
    hr: { employees: 4,
		      desks: 3,
			    computers: 4
        },
    finance: {  employees: 3,
			          desks: 3,
			          computers: 4
              }
  },
  vehicles: {
    veh1: {
      license_plate: '241e3',
			type: 'SUV',
			model: 'Ford'
    },
    veh2: {
      license_plate: '2r1e3',
			type: 'SUV',
			model: 'Chevy'
    }
  },

  machines: [
    'machine1', 
    'machine2', 
    'machine3']
}

puts 'The content of the finance department is:'
p mandilco[:departments][:finance]

puts 'The type of veh2 is:'
p mandilco[:vehicles][:veh2][:type]

puts 'The second machine in the machine department is:'
p mandilco[:machines][1]

mandilco[:machines].push("machine4")
puts 'Adding machine4 to the machine department:'
p mandilco[:machines]

mandilco[:departments][:operations] = {  employees: 8, desks: 3, computers: 7}
puts 'Adding operations department including its own hash...'
p mandilco[:departments][:operations]

mandilco[:vehicles][:veh1][:type] = 'sedan'
puts 'Changing veh1 type'
p mandilco[:vehicles][:veh1][:type]

mandilco[:vehicles].delete(:veh2)
puts 'Removing veh1'
p mandilco[:vehicles]

