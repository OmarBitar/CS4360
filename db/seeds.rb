User.create!([
  {email: "user1@email.com", name: "User 1", encrypted_password: "$2a$12$v.fSSgXxBktBu5GLjZZcAeTIhb/NBwp6f2CUFO2rYrFxq2g63l4D6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, unlock_token: nil, locked_at: nil},
  {email: "user2@email.com", name: "User 2", encrypted_password: "$2a$12$5.2NuUYbOnOz0AtgDdcNyuRRwQ7gszAjLj5Gtd6bF5w1ak9vxOZaa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, unlock_token: nil, locked_at: nil},
  {email: "user3@email.com", name: "User 3", encrypted_password: "$2a$12$5N8hG5brst3CNdL/TYVBl.EhQje39k6oK97uMmRAXiVMIGDIet5KC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, unlock_token: nil, locked_at: nil}
])
Employee.create!([
  {user_id: 1, first_name: "Alex", last_name: "Jackson", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
  {user_id: 1, first_name: "John", last_name: "Jackson", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
  {user_id: 1, first_name: "Alexander", last_name: "Smith", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
  {user_id: 1, first_name: "Rob", last_name: "Johnson", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
  {user_id: 1, first_name: "Alex", last_name: "Johnson", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
  {user_id: 1, first_name: "Ariel", last_name: "Smith", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"12:59\", \"end\"=>\"12:59\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"}
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
  {user_id: 1, title: "title", date: "2020-11-26", start: "2000-01-01 06:59:00", end: "2000-01-01 12:01:00", employee_id: 2, role_id: 2},
  {user_id: 1, title: "", date: "2020-11-23", start: "2000-01-01 05:38:00", end: "2000-01-01 19:40:00", employee_id: 3, role_id: 7},
  {user_id: 1, title: "", date: "2020-11-26", start: "2000-01-01 08:40:00", end: "2000-01-01 19:40:00", employee_id: 6, role_id: 1}
])
