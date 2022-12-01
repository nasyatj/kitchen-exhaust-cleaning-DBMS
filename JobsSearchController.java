/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cps510project;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.paint.Color;

/**
 * FXML Controller class
 *
 * @author nasyajames
 */
public class JobsSearchController implements Initializable {

    @FXML
    private Label ErrorText;
    
    //Job Table
    @FXML 
    private TableView<Job> jobsTable;
    
    @FXML 
    private TableColumn<Job, String> jobIDColumn;
    
    @FXML
    private TableColumn<Job, String> jobDateColumn;
    
    @FXML
    private TableColumn<Job, String> jobPriceColumn;
    
    @FXML
    private TableColumn<Job, String> jobClientColumn;
    
    @FXML
    private TextField IDSearch;
    
    @FXML
    private TextField dateSearch;
    
    @FXML
    private TextField clientSearch;
    
    
    
    Main scenechange = new Main();
    
    Employee thisEmployee;
    
    Client thisClient;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        
        //JOBS
        //set up table columns
        jobIDColumn.setCellValueFactory(new PropertyValueFactory<>("ID"));
        jobDateColumn.setCellValueFactory(new PropertyValueFactory<>("date"));
        jobPriceColumn.setCellValueFactory(new PropertyValueFactory<>("price"));
        jobClientColumn.setCellValueFactory(new PropertyValueFactory<>("client"));
        
        
        //load job data into table (shows all for that employee at first)
        //jobsTable.setItems(getJobs());
        
    }

    //View all Jobs
    @FXML
    private void viewJobs(ActionEvent actionEvent) throws SQLException, ClassNotFoundException {

        /*
        try {
            //Get all information
            //ObservableList<Job> jobData = GuestDAO.viewGuests();  **import from sql database
            //Populate jobs on TableView
            jobsTable.setItems(jobData);
        } catch (SQLException e){
            ErrorText.setTextFill(Color.web("#dd0000"));
            ErrorText.setText("An error occurred. Please try again.");
            System.out.println("Error occurred while getting the information from the DB.\n" + e);
            throw e;
        }
        */
    } 
    
    public void searchButtonPressed(ActionEvent event) throws IOException
    {
        
        //search from database?? or search from observable list created from database??
        
    }
    
}
