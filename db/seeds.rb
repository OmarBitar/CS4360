User.create(email: 'user1@email.com',	name: 'User 1',	password: 'Pass1!')
User.create(email: 'user2@email.com',	name: 'User 2',	password: 'Pass1!')
User.create(email: 'user3@email.com',	name: 'User 3',	password: 'Pass1!')

Employee.create(user_id: 1, first_name: "Alex", 	last_name: "Jackson",	active: 1, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}")
Employee.create(user_id: 1, first_name: "John", 	last_name: "Jackson",	active: 1, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}")
Employee.create(user_id: 1, first_name: "Alexander", 	last_name: "Smith",	active: 1, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}")
Employee.create(user_id: 1, first_name: "Rob", 		last_name: "Johnson",	active: 1, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}")
Employee.create(user_id: 1, first_name: "Alex", 	last_name: "Johnson",	active: 1, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}")
Employee.create(user_id: 1, first_name: "Ariel", 	last_name: "Smith",	active: 1, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}")

Role.create(user_id: 1, name: "Store Manager", priority: 1)
Role.create(user_id: 1, name: "Assistant Store Manager", priority: 2)
Role.create(user_id: 1, name: "Operations Supervisor", priority: 3)
Role.create(user_id: 1, name: "Customer Experience Manager", priority: 4)
Role.create(user_id: 1, name: "Print Services", priority: 5)
Role.create(user_id: 1, name: "Sales", priority: 6)
Role.create(user_id: 1, name: "Cashier", priority: 7)
Role.create(user_id: 1, name: "Floor", priority: 8)