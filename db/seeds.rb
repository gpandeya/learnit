User.delete_all
User.create(email: 'bob@aol.com', password: 'pass1234')
User.create(email: 'sue@aol.com', password: 'pass1234', role: 'teacher')

