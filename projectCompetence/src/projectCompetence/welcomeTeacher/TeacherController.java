package projectCompetence.welcomeTeacher;


import java.io.IOException;

import javafx.fxml.FXML;
import projectCompetence.MainApp;


public class TeacherController {
	@SuppressWarnings("unused")
	private MainApp main;
	@FXML
	private void goWyloguj() throws IOException{
		MainApp.showWylogujScene();
		
	}

}
