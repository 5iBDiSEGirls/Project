package admin;

import java.util.Arrays;
import java.util.Optional;
import javafx.application.Application;
import javafx.beans.binding.Bindings;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonBar.ButtonData;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ContextMenu;
import javafx.scene.control.Label;
import javafx.scene.control.MenuItem;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableRow;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.TextInputDialog;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;
import javafx.util.Callback;
import admin.Person.PersonRow;

public class GUI extends Application {
    private final AdminAccount diary = new AdminAccount("Dziennik");
    private final TableView<PersonRow> table = new TableView<>();
    private HBox filterForm;
    private HBox additionForm;
    
    private final ObservableList<PersonRow> data = diary.getAllPeople();
    private final Label tableLabel = new Label("Brak osob w bazie.");
    
    private EventHandler<ActionEvent> onRemoveEvent(TableRow<PersonRow> row) {
        return new EventHandler<ActionEvent>() {  
            @Override  
            public void handle(ActionEvent event) {

                if (showQuestionDialog("Usuwanie konta", "Czy chcesz usun¹æ to konto?", 
                        "Dane tworzonego konta:\n\tNr: " + row.getItem().getPersonNumber() +
                                "\n\tImiê: " + row.getItem().getFirstName() + 
                                "\n\tNazwisko: " + row.getItem().getLastName() + 
                                "\n\tKlasa: " + row.getItem().getGrade() + 
                                "\n\tData urodzenia: " + row.getItem().getYearOfBirth() + 
                                "\n\tAdres: " + row.getItem().getAddress())) {
                    if (diary.deleteAccount(row.getItem().getPersonNumber())) {
                        table.getItems().remove(row.getItem());
                        showInformation("Usuwanie konta", "Konto zosta³o poprawnie usuniête.", Alert.AlertType.INFORMATION);
                    } else {
                        showInformation("Usuwanie konta", "B³¹d podczas usuwania konta. Spróbuj jeszcze raz.", Alert.AlertType.WARNING);
                    }
                }
            }  
        };
    }
    
    private Callback createContextMenuTable() {
        return new Callback<TableView<PersonRow>, TableRow<PersonRow>>() {  
            @Override  
            public TableRow<PersonRow> call(TableView<PersonRow> tableView) {  
                final TableRow<PersonRow> row = new TableRow<>();  
                final ContextMenu contextMenu = new ContextMenu();
                final MenuItem removeMenuItem = new MenuItem("Usuwanie konta");  
                removeMenuItem.setOnAction(onRemoveEvent(row));
                contextMenu.getItems().add(removeMenuItem);  
                row.contextMenuProperty().bind(  
                        Bindings.when(row.emptyProperty())  
                        .then((ContextMenu)null)  
                        .otherwise(contextMenu)  
                );  
                return row ;  
            }
        };
    }
    
    private TableColumn[] createTableColumns(String[] viewColumnNames, String[] propertyValuesNames, double[] widthRatio) {
        
        if (propertyValuesNames.length != viewColumnNames.length) {
            System.err.println("Nierówna iloœæ nazw kolumn i parametrów.");
            System.exit(1);
        }
        
        TableColumn[] returned = new TableColumn[viewColumnNames.length];
        
        for (int i = 0; i < viewColumnNames.length; ++i) {
            TableColumn tableColumn = new TableColumn(viewColumnNames[i]);
            tableColumn.prefWidthProperty().bind(table.widthProperty().multiply(widthRatio[i]));
            tableColumn.setCellValueFactory(new PropertyValueFactory<>(propertyValuesNames[i]));
            returned[i] = tableColumn;
        }
        
        return returned;
    }
    
    private HBox createFilterForm(String[] viewColumnNames, double[] widthRatio) {
        HBox filter = new HBox();
        
        for (int i = 0; i < viewColumnNames.length; ++i) {
            final TextField filterField = new TextField();
            filterField.setPromptText(viewColumnNames[i]);
            filterField.setPrefWidth(790 * widthRatio[i]);
            filter.getChildren().add(filterField);
        }
        
        final Button bntFiltration = new Button("Filtruj");
        bntFiltration.setOnMouseClicked(new EventHandler <MouseEvent>() {
            @Override
            public void handle(MouseEvent t) {
                String personNumber = ((TextField)filter.getChildren().get(0)).getText();
                String firstName = ((TextField)filter.getChildren().get(1)).getText();
                String lastName = ((TextField)filter.getChildren().get(2)).getText();
                String grade = ((TextField)filter.getChildren().get(3)).getText();
                String yearOfBirth = ((TextField)filter.getChildren().get(4)).getText();
                String address = ((TextField)filter.getChildren().get(5)).getText();
                
                table.setItems(diary.getFilteredPeople(personNumber, firstName, lastName, grade, yearOfBirth, address));
            }
    });
        
        filter.getChildren().add(bntFiltration);
        filter.setPadding(new Insets(10, 0, 10, 0));
         
        return filter;
    }
    
    private HBox createAdditionForm(String[] viewColumnNames, double[] widthRatio) {
        final HBox addition = new HBox();
        
        for (int i = 0; i < viewColumnNames.length; ++i) {
            final TextField additionField = new TextField();
            additionField.setPromptText(viewColumnNames[i]);
            additionField.setPrefWidth(790 * widthRatio[i]);
            addition.getChildren().add(additionField);
        }
        ((TextField)addition.getChildren().get(0)).setVisible(false);
        
        final Button bntAddition = new Button("Dodaj");
        bntAddition.setOnMouseClicked(new EventHandler <MouseEvent>() {
            @Override
            public void handle(MouseEvent t) {
                String firstName = ((TextField)addition.getChildren().get(1)).getText();
                String lastName = ((TextField)addition.getChildren().get(2)).getText();
                String grade = ((TextField)addition.getChildren().get(3)).getText();
                String yearOfBirth = ((TextField)addition.getChildren().get(4)).getText();
                String address = ((TextField)addition.getChildren().get(5)).getText();
                
                PersonRow newPeople;
                if (showQuestionDialog("Tworzenie nowego konta", "Czy chcesz utworzyæ nowe konto?", 
                        "Dane tworzonego konta:\n\tImiê: " + firstName + "\n\tNazwisko: " + lastName +"\n\tKlasa: " + grade + "\n\tPESEL: " + yearOfBirth + "\n\tAdres: " + address)) {
                    if ((newPeople = diary.createAccount(firstName, lastName, grade, yearOfBirth, address)) != null) {
                        data.add(newPeople);
                        showInformation("Tworzenie nowego konta", "Nowe konto zosta³o utworzone.", Alert.AlertType.INFORMATION);
                    } else {
                        showInformation("Tworzenie nowego konta", "B³¹d podczas tworzenia nowego konta. SprawdŸ poprawnoœæ danych.", Alert.AlertType.WARNING);
                    }
                }
            }
        });
        
        addition.getChildren().add(bntAddition);
        addition.setPadding(new Insets(10, 0, 0, 0));
         
        return addition;
    }
    
    @Override
    public void start(Stage stage) throws Exception {
        Scene scene = new Scene(new Group(),800,600);
        stage.setTitle("Leggo - koto Administratora");
        stage.setResizable(false);
        
        String[] viewColumnNames = new String[] { "Nr", "Imiê", "Nazwisko", "Klasa", "Data urodzenia", "Adres"}; 
        String[] propertyValuesNames = new String[] { "personNumber", "firstName", "lastName", "grade", "personalIdentity", "address"};
        double[] widthRatio = new double[] { 0.05, 0.2, 0.2, 0.05, 0.15, 0.25}; 
 
        table.setPlaceholder(tableLabel);
        table.setPrefWidth(790);
        
        table.setRowFactory(this.createContextMenuTable());
 
        table.setItems(data);
        table.getColumns().addAll(this.createTableColumns(viewColumnNames, propertyValuesNames, widthRatio));
         
        final BorderPane borderPane = new BorderPane();
        borderPane.setPadding(new Insets(10));
        borderPane.setTop(filterForm = this.createFilterForm(Arrays.copyOfRange(viewColumnNames, 0, viewColumnNames.length), Arrays.copyOfRange(widthRatio, 0, widthRatio.length)));
        borderPane.setCenter(table);
        borderPane.setBottom(additionForm = this.createAdditionForm(Arrays.copyOfRange(viewColumnNames, 0, viewColumnNames.length), Arrays.copyOfRange(widthRatio, 0, widthRatio.length)));
 
        ((Group) scene.getRoot()).getChildren().addAll(borderPane);
 
        stage.setScene(scene);
        stage.show();
    }
    
    public static void main(String[] args) {
        launch(args);
    }
    
    void showInformation(String title, String contentText, Alert.AlertType type) {
        Alert alert = new Alert(type);
        alert.setTitle(title);
        alert.setHeaderText(null);
        alert.setContentText(contentText);
        
        alert.showAndWait();
    }
    
    boolean showQuestionDialog(String title, String headerText, String contentText) {
        Alert alert = new Alert(AlertType.CONFIRMATION);
        alert.setTitle(title);
        alert.setHeaderText(headerText);
        alert.setContentText(contentText);
        
        Optional<ButtonType> result = alert.showAndWait();
        return result.isPresent() && result.get().getButtonData() == ButtonData.OK_DONE;
    }
    
    String showInputDialog(String title, String headerText, String contentText) {
        TextInputDialog dialog = new TextInputDialog();
        dialog.setTitle(title);
        dialog.setHeaderText(headerText);
        dialog.setContentText(contentText);
        do {
            Optional<String> result = dialog.showAndWait();
            if (result.isPresent()) {
                return result.get();
            } else {
                if (showQuestionDialog("Anulowanie operacji", "Czy chcesz anulowaæ operacjê?", null)) {
                    return null;
                }
            }
        } while(true);
    }
}
