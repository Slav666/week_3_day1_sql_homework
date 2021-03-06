Q1. Where are we instantiating instances of the Property class?

 The console.rb file in lines 6, 15, 24.

Q2. Where are we defining the SQL that enables us to save the ruby Property object into the database?

The property.rb file on line 18.

Q3. In console.rb, which lines modify the database?

Lines 4, 13, 22, 31, 33.

Q4. Why do we not define the id of a Property object at the point we instantiate it (‘new it up’)?

We don not define the id of a property object at this point because it does not exist yet.

Q5. Where and how do we assign the id (that is generated by the database) to the ruby Property object?

@id = db.exec_prepared("save", values)[0]["id"].
The property.rb file: line 32.

Q6. Why do we put a guard (an if clause) on the @id attribute in the constructor?

It is an instance variable (the @id attribute in the constructor). The guard tells the istance variable to assign an id, if it exitst.

Q7. Why are some of the CRUD actions represented by instance methods, and others by class methods?

Some of the CRUD actions are represented by instance methods as we only want to use the actions for certain instances. We can use class methods for creating a new class and deleting all.

Q8. What type of data structure is returned by calls to db.exec_prepared()? In the save method, how do we access the id from the returned data structure?

 @id = db.exec_prepared("save", values)[0]["id"]
 The array of hashes. We access the id by calling on the id key on the first instance of the array.

Q9. Why do we use prepared statements when performing database operations?

We use prepared statements to protect the database from dangerous data. (I am not sure of this)



Extension Questions
Look at the find_by_id and find_by_address methods in the Property class.

Q10. What do they take in as their arguments?

find_by_id method takes the (id) as the arguement
find_by_address method takes (address) as it's argument

Q11. What are their return values?
?
