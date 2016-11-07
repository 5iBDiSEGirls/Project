package ch.makery.address;

import java.io.IOException;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class MainApp extends Application {

  //  @SuppressWarnings("unused")
	//private static BorderPane mainLayout;
	private Stage primaryStage;
    private static BorderPane rootLayout;

    @Override
    public void start(Stage primaryStage) {
        this.primaryStage = primaryStage;
        this.primaryStage.setTitle("Nauczyciel");

        initRootLayout();

        showNauczyciel();
    }

    /**
     * Initializes the root layout.
     */
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

    /**
     * Shows the person overview inside the root layout.
     */
    public static void showNauczyciel() {
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

    /**
     * Returns the main stage.
     * @return
     */
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
    public static void showProjektScene(){
    	try{
    	
    	FXMLLoader loader = new FXMLLoader();
    	loader.setLocation(MainApp.class.getResource("view/Projekt.fxml"));
    	AnchorPane Projekt = (AnchorPane)loader.load();
    	
    	rootLayout.setCenter(Projekt);
    	
    	} catch (IOException e) {
            e.printStackTrace();
        }
    
    	
    }

    public static void main(String[] args) {
        launch(args);
    }
}