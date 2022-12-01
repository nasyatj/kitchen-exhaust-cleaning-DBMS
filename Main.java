/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cps510project;

import java.io.IOException;
import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

/**
 *
 * @author nasyajames
 */
public class Main extends Application{
    private static Stage stage;

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) throws Exception {
        this.stage = stage;
        
        Parent root = FXMLLoader.load(getClass().getResource("LoginScreen.fxml")); 
        Scene scene = new Scene(root);
        
        stage.setScene(scene);
        stage.setTitle("Kitchen Exhaust Cleaning DBMS");
        stage.show();
    }
    
    public void changeScene(String fxml) throws IOException{
        Parent pane = FXMLLoader.load(getClass().getResource(fxml));
        Scene scene2 = new Scene(pane);
        stage.setScene(scene2);
        stage.setResizable(false);
    }
    
}
