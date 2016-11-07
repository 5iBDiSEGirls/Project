package admin;

import java.io.*;
import javafx.beans.property.SimpleStringProperty;

public class Person implements Serializable {
	
    private final int personNumber;
    private final String firstName;
    private final String lastName;
    private final String grade;
    private final String yearOfBirth;
    private final String address;

    Person(int personNumber, String firstName, String lastName, String grade, String yearOfBirth, String address) {
        this.personNumber = personNumber;
        this.firstName = firstName;
        this.lastName = lastName;
        this.grade = grade;
        this.yearOfBirth = yearOfBirth;
        this.address = address;
    }

    public boolean equals(String personrNumber, String firstName, String lastName,String grade, String yearOfBirth, String address) {
        return ("".equals(personrNumber) ||personrNumber.equals(String.valueOf(this.personNumber))) &&
            ("".equals(firstName) || this.firstName.equals(firstName))  && 
            ("".equals(lastName) || this.lastName.equals(lastName)) &&
            ("".equals(grade) || this.grade.equals(grade)) &&
            ("".equals(yearOfBirth) || this.yearOfBirth.equals(yearOfBirth)) &&
            ("".equals(address) || this.address.contains(address));
    }

    public PersonRow getPersonRow() {
        return new PersonRow(String.valueOf(personNumber),
            firstName,
            lastName,
            grade,
            yearOfBirth,
            address);
    }
    
    public class PersonRow {
    
        private final SimpleStringProperty personNumber;
        private final SimpleStringProperty firstName;
        private final SimpleStringProperty lastName;
        private final SimpleStringProperty yearOfBirth;
        private final SimpleStringProperty address;
		private SimpleStringProperty grade;

        private PersonRow(String pNumber, String fName, String lName, String pgrade, String pyearOfBirth, String cAddress) {
            this.personNumber = new SimpleStringProperty(pNumber);
            this.firstName = new SimpleStringProperty(fName);
            this.lastName = new SimpleStringProperty(lName);
            this.grade = new SimpleStringProperty(pgrade);
            this.yearOfBirth = new SimpleStringProperty(pyearOfBirth);
            this.address = new SimpleStringProperty(cAddress);
        }

        public String getPersonNumber() {
            return personNumber.get();
        }

        public String getFirstName() {
            return firstName.get();
        }

        public String getLastName() {
            return lastName.get();
        }
        
        public String getGrade() {
            return grade.get();
        }


        public String getYearOfBirth() {
            return yearOfBirth.get();
        }

        public String getAddress() {
            return address.get();
        }
    }
}
	
