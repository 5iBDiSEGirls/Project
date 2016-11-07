package projectCompetence;

import java.io.IOException;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class MainApp extends Application {
	
	private Stage primaryStage;
    private static BorderPane rootLayout;

    @Override
    public void start(Stage stage) throws Exception{
    	Parent root = FXMLLoader.load(getClass().getResource("LoginScene.fxml"));
		Scene scene = new Scene(root);
		stage.setScene(scene);
		stage.setTitle("Logowanie w Leggo");
		stage.show();
    }


    public void showTeacherWindow(Stage stage) {
    	this.primaryStage = stage;
        this.primaryStage.setTitle("Nauczyciel");
        initRootLayout();
        showNauczyciel();
    }
    
    public void initRootLayout() {
        try {
            // Load root layout from fxml file.
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(MainApp.class.getResource("view/RootLayout.fxml"));
            rootLayout = (BorderPane) loader.load();

            // Show the scene containing the root layout.
            Scene scene = new Scene(rootLayout);
            primaryStage.setScene(scene);
            primaryStage.show();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void showNauczyciel() {
        try {
            // Load person overview.
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(MainApp.class.getResource("view/Nauczyciel.fxml"));
            AnchorPane Nauczyciel = (AnchorPane) loader.load();

            // Set person overview into the center of root layout.
            rootLayout.setCenter(Nauczyciel);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public Stage getPrimaryStage() {
        return primaryStage;
    }
    public static void showWylogujScene(){
    	try{
    	
    	FXMLLoader loader = new FXMLLoader();
    	loader.setLocation(MainApp.class.getResource("view/Wyloguj.fxml"));
    	AnchorPane Wyloguj = (AnchorPane)loader.load();
    	
    	rootLayout.setCenter(Wyloguj);
    	
    	} catch (IOException e) {
            e.printStackTrace();
        }
    
    	
    }

    public static void main(String[] args) {
        launch(args);
    }
}
