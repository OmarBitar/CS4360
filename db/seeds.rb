User.create(email: 'user1@email.com', name: 'User 1', password: 'Pass1!')
User.create(email: 'user2@email.com', name: 'User 2', password: 'Pass1!')
User.create(email: 'user3@email.com', name: 'User 3', password: 'Pass1!')

CoverageRule.create(user_id: 1)
CoverageRule.create(user_id: 1)
CoverageRule.create(user_id: 1)

CoverageRule.create(user_id: 2)
CoverageRule.create(user_id: 2)
CoverageRule.create(user_id: 2)

Employee.create(user_id: 1, first_name: "Alex", last_name: "Johnson User1")
Employee.create(user_id: 1, first_name: "John", last_name: "Jackson User1")
Employee.create(user_id: 1, first_name: "Alexander", last_name: "Smith User1")

Employee.create(user_id: 2, first_name: "Rob", last_name: "Johnson User2")
Employee.create(user_id: 2, first_name: "Alex", last_name: "Johnson User2")
Employee.create(user_id: 2, first_name: "Ariel", last_name: "Smith User2")

Role.create(user_id: 1, name: "Cook User 1", priority: 1)
Role.create(user_id: 1, name: "Waitress User 1", priority: 2)
Role.create(user_id: 1, name: "Dishwasher User 1", priority: 3)

Role.create(user_id: 2, name: "Store Manager User 2", priority: 1)
Role.create(user_id: 2, name: "Operations Supervisor User 2", priority: 2)
Role.create(user_id: 2, name: "Customer Experience Manager User 2", priority: 3)

Schedule.create(user_id: 1)
Schedule.create(user_id: 1)
Schedule.create(user_id: 1)

Schedule.create(user_id: 2)
Schedule.create(user_id: 2)
Schedule.create(user_id: 2)