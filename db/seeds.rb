User.create(email: 'user1@email.com',	name: 'User 1',	password: 'Pass1!')
User.create(email: 'user2@email.com',	name: 'User 2',	password: 'Pass1!')

Employee.create!([
                     {user_id: 1, first_name: "Alex", last_name: "Schmitz", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"14:00\", \"end\"=>\"17:00\"}, \"Monday\"=>{\"start\"=>\"07:00\", \"end\"=>\"17:00\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"07:00\", \"end\"=>\"17:00\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"07:00\", \"end\"=>\"17:00\"}, \"Saturday\"=>{\"start\"=>\"10:00\", \"end\"=>\"13:30\"}}"},
                     {user_id: 1, first_name: "John", last_name: "Jackson", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"10:00\", \"end\"=>\"22:00\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"10:00\", \"end\"=>\"22:00\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
                     {user_id: 1, first_name: "Lexi", last_name: "Smith", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Monday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Tuesday\"=>{\"start\"=>\"00:00\", \"end\"=>\"11:59\"}, \"Wednesday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Thursday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Friday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Saturday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}}"},
                     {user_id: 1, first_name: "Rob", last_name: "Shapiro", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"04:00\", \"end\"=>\"12:00\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"09:00\", \"end\"=>\"22:30\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"09:00\", \"end\"=>\"22:30\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
                     {user_id: 1, first_name: "Aaron", last_name: "Barnes", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"05:00\", \"end\"=>\"17:00\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
                     {user_id: 1, first_name: "Ariel", last_name: "Smith", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Monday\"=>{\"start\"=>\"11:30\", \"end\"=>\"23:30\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"11:30\", \"end\"=>\"23:30\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
                     {user_id: 1, first_name: "Jack", last_name: "Johnson", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"06:00\", \"end\"=>\"23:00\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"06:00\", \"end\"=>\"23:00\"}}"},



                     {user_id: 2, first_name: "Adeline", last_name: "Daniels", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"14:00\", \"end\"=>\"17:00\"}, \"Monday\"=>{\"start\"=>\"07:00\", \"end\"=>\"17:00\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"07:00\", \"end\"=>\"17:00\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"07:00\", \"end\"=>\"17:00\"}, \"Saturday\"=>{\"start\"=>\"10:00\", \"end\"=>\"13:30\"}}"},
                     {user_id: 2, first_name: "Isobel", last_name: "Marquez", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"10:00\", \"end\"=>\"22:00\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"10:00\", \"end\"=>\"22:00\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
                     {user_id: 2, first_name: "Yasir", last_name: "Bailey", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Monday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Tuesday\"=>{\"start\"=>\"00:00\", \"end\"=>\"11:59\"}, \"Wednesday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Thursday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Friday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}, \"Saturday\"=>{\"start\"=>\"00:00\", \"end\"=>\"23:59\"}}"},
                     {user_id: 2, first_name: "Jovan", last_name: "Talbot", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"04:00\", \"end\"=>\"12:00\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"09:00\", \"end\"=>\"22:30\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"09:00\", \"end\"=>\"22:30\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
                     {user_id: 2, first_name: "Inaya", last_name: "Saunders", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"05:00\", \"end\"=>\"17:00\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
                     {user_id: 2, first_name: "Joshua", last_name: "Mckinney", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Monday\"=>{\"start\"=>\"11:30\", \"end\"=>\"23:30\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"11:30\", \"end\"=>\"23:30\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"\", \"end\"=>\"\"}}"},
                     {user_id: 2, first_name: "Aamir", last_name: "Wade", active: true, availability: "{\"Sunday\"=>{\"start\"=>\"06:00\", \"end\"=>\"23:00\"}, \"Monday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Tuesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Wednesday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Thursday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Friday\"=>{\"start\"=>\"\", \"end\"=>\"\"}, \"Saturday\"=>{\"start\"=>\"06:00\", \"end\"=>\"23:00\"}}"}
                 ])
Role.create!([
                 {user_id: 1, name: "Store Manager", priority: 1},
                 {user_id: 1, name: "Assistant Store Manager", priority: 2},
                 {user_id: 1, name: "Operations Supervisor", priority: 3},
                 {user_id: 1, name: "Customer Experience Manager", priority: 4},
                 {user_id: 1, name: "Print Services", priority: 5},
                 {user_id: 1, name: "Sales", priority: 6},
                 {user_id: 1, name: "Cashier", priority: 7},
                 {user_id: 1, name: "Floor", priority: 8},

                 {user_id: 2, name: "Restaurant Manager", priority: 1},
                 {user_id: 2, name: "Assistant Restaurant Manager", priority: 2},
                 {user_id: 2, name: "Head Chef", priority: 3},
                 {user_id: 2, name: "Cashier", priority: 4},
                 {user_id: 2, name: "Waiter", priority: 5},
                 {user_id: 2, name: "Valet", priority: 6},
                 {user_id: 2, name: "Dishwasher", priority: 7}
             ])
Shift.create!([
                  {user_id: 1, title: "A shift", date: "2020-11-30", start: "2000-01-01 19:00:00", end: "2000-01-01 19:30:00", employee_id: 1, role_id: 1},
                  {user_id: 1, title: "", date: "2020-12-02", start: "2000-01-01 07:00:00", end: "2000-01-01 15:30:00", employee_id: 2, role_id: 2},
                  {user_id: 1, title: "", date: "2020-12-03", start: "2000-01-01 04:30:00", end: "2000-01-01 15:00:00", employee_id: 3, role_id: 3},
                  {user_id: 1, title: "", date: "2020-11-30", start: "2000-01-01 11:00:00", end: "2000-01-01 19:00:00", employee_id: 2, role_id: 4},
                  {user_id: 1, title: "A shift title", date: "2020-12-03", start: "2000-01-01 09:00:00", end: "2000-01-01 17:00:00", employee_id: 1, role_id: 4},

                  {user_id: 2, title: "A shift", date: "2020-11-30", start: "2000-01-01 19:00:00", end: "2000-01-01 19:30:00", employee_id: 1, role_id: 1},
                  {user_id: 2, title: "", date: "2020-12-02", start: "2000-01-02 05:00:00", end: "2000-01-02 13:30:00", employee_id: 2, role_id: 2},
                  {user_id: 2, title: "", date: "2020-12-03", start: "2000-01-02 02:30:00", end: "2000-01-02 13:00:00", employee_id: 3, role_id: 3},
                  {user_id: 2, title: "", date: "2020-11-30", start: "2000-01-02 8:00:00", end: "2000-01-02 16:00:00", employee_id: 2, role_id: 4}
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
                           {role_id: 8, employee_id: 4},
                           {role_id: 7, employee_id: 5},
                           {role_id: 8, employee_id: 5},
                           {role_id: 6, employee_id: 6},
                           {role_id: 7, employee_id: 6},
                           {role_id: 2, employee_id: 2},
                           {role_id: 4, employee_id: 6},
                           {role_id: 7, employee_id: 3},

                           {role_id: 14, employee_id: 8},
                           {role_id: 9, employee_id: 9},
                           {role_id: 10, employee_id: 10},
                           {role_id: 11, employee_id: 11},
                           {role_id: 12, employee_id: 12},
                           {role_id: 13, employee_id: 13},
                           {role_id: 9, employee_id: 14},
                           {role_id: 9, employee_id: 8},
                           {role_id: 10, employee_id: 9},
                           {role_id: 11, employee_id: 10},
                           {role_id: 12, employee_id: 11},
                           {role_id: 13, employee_id: 12},
                           {role_id: 14, employee_id: 13},
                           {role_id: 15, employee_id: 8},
                           {role_id: 12, employee_id: 9},
                           {role_id: 9, employee_id: 10},
                           {role_id: 10, employee_id: 11},
                           {role_id: 15, employee_id: 12},
                           {role_id: 15, employee_id: 13},
                           {role_id: 14, employee_id: 14}
                       ])