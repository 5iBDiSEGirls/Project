package projectCompetence.login;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class LoginController implements Initializable{

	@FXML
	private Label logLab;
	@FXML
	private TextField textLogin;
	@FXML
	private PasswordField textHaslo;
	
	@FXML
	private void loginButtonAction(ActionEvent event) throws Exception{
		if(textLogin.getText().equals("test@leggo.com") && textHaslo.getText().equals("test")) {
			logLab.setText("Witaj " + textLogin.getText() + "!");
			Parent parent = FXMLLoader.load(getClass().getResource("/login/Nauczyciel.fxml"));
			Stage stage = new Stage();
			Scene scene = new Scene(parent);
			stage.setScene(scene);
			stage.setTitle("Zalogowany jako nauczyciel");			
		}else {
			logLab.setText("Has³o nieprawid³owe!");
		}
	}
	@Override
	public void initialize(URL url, ResourceBundle rb) {
		// TODO Auto-generated method stub
		
	}

}
