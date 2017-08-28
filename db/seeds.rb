User.delete_all

User.create(email: 'emily@aol.com', password: 'pass1234')
User.create(email: 'frank@aol.com', password: 'pass1234', role: 'teacher')
User.create(email: 'tom@aol.com', password: 'pass1234', role: 'teacher')

Klass.delete_all

Klass.create(name:'geometry', subject: 'math')
Klass.create(name:'algebra', subject: 'math')



