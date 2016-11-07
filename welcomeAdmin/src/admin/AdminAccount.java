package admin;

import java.util.*;
import java.io.*;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import admin.Person.PersonRow;

public class AdminAccount implements Serializable {
	
	private int nextPersonNumber;
	private Map<String, Person> listOfPerson;
	private File fileName;
	
	public AdminAccount(String diaryName) {
		if (!this.loadInformation(new File(diaryName + ".dziennik"))) {
			this.nextPersonNumber = 1;
			this.listOfPerson = new HashMap<>();
			this.fileName = new File(diaryName + ".dziennik");
			this.saveInformation(this.fileName);
		}
	}
        
        private boolean loadInformation(File fileName) {
        	AdminAccount loadedData = null;

            try {
                ObjectInputStream inStream = new ObjectInputStream(new FileInputStream(fileName));
                loadedData = (AdminAccount)inStream.readObject();
                inStream.close();
            }
            catch(IOException | ClassNotFoundException error) {
                return false;
            }

            this.nextPersonNumber = loadedData.nextPersonNumber;
            this.listOfPerson = loadedData.listOfPerson;
            this.fileName = loadedData.fileName;

            return true;
	}
        
        private boolean saveInformation(File fileName) {
            try {
                ObjectOutputStream outStream = new ObjectOutputStream(new FileOutputStream(fileName));
                outStream.writeObject(this);
                outStream.close();
            }
            catch(IOException error) {
                return false;
            }
            return true;
	}
        
        ObservableList<PersonRow> getAllPeople() {
            ObservableList<PersonRow> people = FXCollections.observableArrayList();
            for (Person customer : this.listOfPerson.values()) {
            	people.add(customer.getPersonRow());
            }
            
            return people;
        }
        
        ObservableList<PersonRow> getFilteredPeople(String personNumber, String firstName, String lastName, String grade, String yearOfBirth, String address) {
            ObservableList<PersonRow> filteredPerson = FXCollections.observableArrayList();
            for (Person person : this.listOfPerson.values()) {
                if (person.equals(personNumber, firstName, lastName, grade, yearOfBirth, address)) {
                    filteredPerson.add(person.getPersonRow());
                }
            }
            
            return filteredPerson;
        }
        
        Person getAccount(String accountNumber) {
            return this.listOfPerson.get(accountNumber);
	}
        
        PersonRow createAccount(String firstName, String lastName, String grade, String personalIdentity, String address) {
        	Person person = new Person(this.nextPersonNumber++, firstName, lastName, grade, personalIdentity, address);
        	listOfPerson.put(Integer.toString(this.nextPersonNumber - 1), person);
            this.saveInformation(this.fileName);
            return person.getPersonRow();
	}
        
        boolean deleteAccount(String accountNumber) {
            int numberBefore = this.listOfPerson.values().toArray().length;
            this.listOfPerson.remove(accountNumber);
            if (numberBefore != this.listOfPerson.values().toArray().length) {
                this.saveInformation(fileName);
                return true;
            } else {
                return false;
            }
	}
}
