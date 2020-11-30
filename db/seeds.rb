User.create!([
  {email: "user1@email.com", name: "User 1", encrypted_password: "$2a$12$v.fSSgXxBktBu5GLjZZcAeTIhb/NBwp6f2CUFO2rYrFxq2g63l4D6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, unlock_token: nil, locked_at: nil},
  {email: "user2@email.com", name: "User 2", encrypted_password: "$2a$12$5.2NuUYbOnOz0AtgDdcNyuRRwQ7gszAjLj5Gtd6bF5w1ak9vxOZaa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, unlock_token: nil, locked_at: nil},
  {email: "user3@email.com", name: "User 3", encrypted_password: "$2a$12$5N8hG5brst3CNdL/TYVBl.EhQje39k6oK97uMmRAXiVMIGDIet5KC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, unlock_token: nil, locked_at: nil}
])
Employee.create!([
  {user_id: 1, first_name: "Alex", last_name: "Schmitz", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"14:00\", \"end\"=>\"17:00\"}, \"Monday\"=>{\"start\"=>\"07:00\", \"end\"=>\"17:00\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"07:00\", \"end\"=>\"17:00\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"07:00\", \"end\"=>\"17:00\"}, \"Saturday\"=>{\"start\"=>\"10:00\", \"end\"=>\"13:30\"}}"},
  {user_id: 1, first_name: "John", last_name: "Jackson", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"10:00\", \"end\"=>\"22:00\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"10:00\", \"end\"=>\"22:00\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
  {user_id: 1, first_name: "Lexi", last_name: "Smith", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Monday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Tuesday\"=>{\"start\"=>\"00:00\", \"end\"=>\"11:59\"}, \"Wednesday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Thursday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Friday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Saturday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}}"},
  {user_id: 1, first_name: "Rob", last_name: "Shapiro", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"04:00\", \"end\"=>\"12:00\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"09:00\", \"end\"=>\"22:30\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"09:00\", \"end\"=>\"22:30\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
  {user_id: 1, first_name: "Aaron", last_name: "Barnes", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"05:00\", \"end\"=>\"17:00\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
  {user_id: 1, first_name: "Ariel", last_name: "Smith", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Monday\"=>{\"start\"=>\"11:30\", \"end\"=>\"23:30\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"11:30\", \"end\"=>\"23:30\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
  {user_id: 1, first_name: "Jack", last_name: "Johnson", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"06:00\", \"end\"=>\"23:00\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"06:00\", \"end\"=>\"23:00\"}}"}
])
EmployeesRoles.create!([
  {role_id: 5, employee_id: 7},
  {role_id: 6, employee_id: 7},
  {role_id: 7, employee_id: 7},
  {role_id: 8, employee_id: 7},
  {role_id: 7, employee_id: 1},
  {role_id: 1, employee_id: 3},
  {role_id: 5, employee_id: 2},
  {role_id: 7, employee_id: 2},
  {role_id: 3, employee_id: 4},
  {role_id: 5, employee_id: 4},
  {role_id: 6, employee_id: 4},
  {role_id: 7, employee_id: 4},
  {role_id: 8, employee_id: 4},
  {role_id: 7, employee_id: 5},
  {role_id: 8, employee_id: 5},
  {role_id: 6, employee_id: 6},
  {role_id: 7, employee_id: 6},
  {role_id: 2, employee_id: 2},
  {role_id: 4, employee_id: 6},
  {role_id: 7, employee_id: 3}
])
Role.create!([
  {user_id: 1, name: "Store Manager", priority: 1},
  {user_id: 1, name: "Assistant Store Manager", priority: 2},
  {user_id: 1, name: "Operations Supervisor", priority: 3},
  {user_id: 1, name: "Customer Experience Manager", priority: 4},
  {user_id: 1, name: "Print Services", priority: 5},
  {user_id: 1, name: "Sales", priority: 6},
  {user_id: 1, name: "Cashier", priority: 7},
  {user_id: 1, name: "Floor", priority: 8}
])
Shift.create!([
  {user_id: 1, title: "A shift", date: "2020-11-30", start: "2000-01-01 19:00:00", end: "2000-01-01 19:30:00", employee_id: 1, role_id: 1},
  {user_id: 1, title: "", date: "2020-12-02", start: "2000-01-01 07:00:00", end: "2000-01-01 15:30:00", employee_id: 2, role_id: 2},
  {user_id: 1, title: "", date: "2020-12-03", start: "2000-01-01 04:30:00", end: "2000-01-01 15:00:00", employee_id: 3, role_id: 3},
  {user_id: 1, title: "", date: "2020-11-30", start: "2000-01-01 11:00:00", end: "2000-01-01 19:00:00", employee_id: 2, role_id: 4},
  {user_id: 1, title: "A shift title", date: "2020-12-03", start: "2000-01-01 09:00:00", end: "2000-01-01 17:00:00", employee_id: 1, role_id: 4}
])
Employee::HABTM_Roles.create!([
  {role_id: 5, employee_id: 7},
  {role_id: 6, employee_id: 7},
  {role_id: 7, employee_id: 7},
  {role_id: 8, employee_id: 7},
  {role_id: 7, employee_id: 1},
  {role_id: 1, employee_id: 3},
  {role_id: 5, employee_id: 2},
  {role_id: 7, employee_id: 2},
  {role_id: 3, employee_id: 4},
  {role_id: 5, employee_id: 4},
  {role_id: 6, employee_id: 4},
  {role_id: 7, employee_id: 4},
  {role_id: 8, employee_id: 4},
  {role_id: 7, employee_id: 5},
  {role_id: 8, employee_id: 5},
  {role_id: 6, employee_id: 6},
  {role_id: 7, employee_id: 6},
  {role_id: 2, employee_id: 2},
  {role_id: 4, employee_id: 6},
  {role_id: 7, employee_id: 3}
])
Role::HABTM_Employees.create!([
  {role_id: 5, employee_id: 7},
  {role_id: 6, employee_id: 7},
  {role_id: 7, employee_id: 7},
  {role_id: 8, employee_id: 7},
  {role_id: 7, employee_id: 1},
  {role_id: 1, employee_id: 3},
  {role_id: 5, employee_id: 2},
  {role_id: 7, employee_id: 2},
  {role_id: 3, employee_id: 4},
  {role_id: 5, employee_id: 4},
  {role_id: 6, employee_id: 4},
  {role_id: 7, employee_id: 4},
  {role_id: 8, employee_id: 4},
  {role_id: 7, employee_id: 5},
  {role_id: 8, employee_id: 5},
  {role_id: 6, employee_id: 6},
  {role_id: 7, employee_id: 6},
  {role_id: 2, employee_id: 2},
  {role_id: 4, employee_id: 6},
  {role_id: 7, employee_id: 3}
])
