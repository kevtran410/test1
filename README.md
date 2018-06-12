# README

1. App 1: Has 3 components

    a. Seeder: On every run, generate a Seed object with label = “1-#{rand}” and store it to database.    
    
    b. Consumer: On every run, randomly taking a non consumed Seed object, add an object Fruit with property seed_id refer to that Seed object and then mark that Seed as consumed. The Fruit has a random name “f-#{rand}”.
    
    c. Scheduler: Trigger seeder every 2 minutes and consumer every 5 minutes

2. App 2: Has 3 components

    a. Seeder: On every run, generate a Seed object with label = “2-#{rand}” and store it to database.
  
    b. Consumer: On every run, randomly taking a non consumed Seed object, add an object Fruit with property seed_id refer to that Seed object and then mark that Seed as consumed. The Fruit has a random name “j-#{rand}”.
    
    c. Scheduler: Trigger seeder every 1 minutes and consumer every 2 minutes

3. App 3: expose 2 urls

    a. /report1: Display a list of recent 10 items from App 1 (string and consumed flag)
    
    b. /report2: Display a list of recent 10 items from App 2 (string and consumed flag)

