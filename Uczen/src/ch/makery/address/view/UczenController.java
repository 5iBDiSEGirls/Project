package ch.makery.address.view;

import java.io.IOException;

import ch.makery.address.MainApp;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class UczenController {
	
	@SuppressWarnings("unused")
	private MainApp main;
	@FXML
	private void goWyloguj() throws IOException{
		MainApp.showWylogujScene();
		
	}
	@FXML
	private void goUczen() throws IOException{
		MainApp.showUczen();
		
		
	}
	@FXML
	private void goProjekt() throws IOException{
		MainApp.showProjektScene();
		
		
}
	
	@FXML
	private Button button;
   @FXML
   private void goNewWindow(ActionEvent event){
	   try{
		   
		   FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("Oceny i Uwagi.fxml"));
		   Parent root1 = (Parent) fxmlLoader.load();
		   Stage stage = new Stage();
		   stage.setTitle("Uwagi i Oceny");
		   stage.setScene(new Scene(root1));
		   stage.show();
		  
		   
		   
		   
	   }catch(Exception e) {
		   System.out.println("Nie mozna zaladowac okna");
	   }
	   
   }


}
