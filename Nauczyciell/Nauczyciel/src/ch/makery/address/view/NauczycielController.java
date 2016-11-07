package ch.makery.address.view;

import java.io.IOException;

import ch.makery.address.MainApp;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;

import javafx.scene.control.MenuItem;
import javafx.stage.Stage;


public class NauczycielController {
	@SuppressWarnings("unused")
	private MainApp main;
	@FXML
	private void goWyloguj() throws IOException{
		MainApp.showWylogujScene();
		
	}
	@FXML
	private void goNauczyciel() throws IOException{
		MainApp.showNauczyciel();
		
		
	}
	@FXML
	private void goProjekt() throws IOException{
		MainApp.showProjektScene();
		
		
}
	@FXML
	private MenuItem menu1;
   @FXML
   private void goKlasa1A(ActionEvent event){
	   try{
		   FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("Klasa1A.fxml"));
		   Parent root1 = (Parent) fxmlLoader.load();
		   Stage stage = new Stage();
		   stage.setTitle("Klasa 1A");
		   stage.setScene(new Scene(root1));
		   stage.show();
		   
		   
	   }catch(Exception e) {
		   System.out.println("Nie mozna zaladowac okna");
	   }
	   
   }
	@FXML
	private MenuItem menu2;
  @FXML
  private void goKlasa1B(ActionEvent event){
	   try{
		   FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("Klasa1B.fxml"));
		   Parent root1 = (Parent) fxmlLoader.load();
		   Stage stage = new Stage();
		   stage.setTitle("Klasa 1B");
		   stage.setScene(new Scene(root1));
		   stage.show();
		   
		   
	   }catch(Exception e) {
		   System.out.println("Nie mozna zaladowac okna");
	   }
	   
  }
	@FXML
	private MenuItem menu3;
@FXML
private void goKlasa2A(ActionEvent event){
	   try{
		   FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("Klasa2A.fxml"));
		   Parent root1 = (Parent) fxmlLoader.load();
		   Stage stage = new Stage();
		   stage.setTitle("Klasa 2A");
		   stage.setScene(new Scene(root1));
		   stage.show();
		   
		   
	   }catch(Exception e) {
		   System.out.println("Nie mozna zaladowac okna");
	   }
	   
}
@FXML
private MenuItem menu4;
@FXML
private void goKlasa2B(ActionEvent event){
   try{
	   FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("Klasa2B.fxml"));
	   Parent root1 = (Parent) fxmlLoader.load();
	   Stage stage = new Stage();
	   stage.setTitle("Klasa 2B");
	   stage.setScene(new Scene(root1));
	   stage.show();
	   
	   
   }catch(Exception e) {
	   System.out.println("Nie mozna zaladowac okna");
   }
   
}
@FXML
private MenuItem menu5;
@FXML
private void goKlasa3A(ActionEvent event){
   try{
	   FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("Klasa3A.fxml"));
	   Parent root1 = (Parent) fxmlLoader.load();
	   Stage stage = new Stage();
	   stage.setTitle("Klasa 3A");
	   stage.setScene(new Scene(root1));
	   stage.show();
	   
	   
   }catch(Exception e) {
	   System.out.println("Nie mozna zaladowac okna");
   }
   
}
@FXML
private MenuItem menu6;
@FXML
private void goKlasa3B(ActionEvent event){
   try{
	   FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource("Klasa3B.fxml"));
	   Parent root1 = (Parent) fxmlLoader.load();
	   Stage stage = new Stage();
	   stage.setTitle("Klasa 3B");
	   stage.setScene(new Scene(root1));
	   stage.show();
	   
	   
   }catch(Exception e) {
	   System.out.println("Nie mozna zaladowac okna");
   }
   
}

}
