package dam.gestionhotelera;

import javafx.application.Application;
import static javafx.application.Application.launch;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.scene.layout.AnchorPane;
import javafx.stage.Stage;
import javafx.stage.StageStyle;


public class MainApp extends Application {

    @Override
    public void start(Stage stage) throws Exception {
    Stage PrimarStage = stage;
        AnchorPane root = FXMLLoader.load(getClass().getResource("/fxml/VPrincipal.fxml"));
        stage.initStyle(StageStyle.DECORATED);
        stage.centerOnScreen();
        stage.setOpacity(0.97);
        stage.setTitle("Aplicacion Principal");
        stage.getIcons().add(new Image(getClass().getResource("/images/hotel.png").toString()));
        Scene scene = new Scene(root);
        stage.setOnCloseRequest((event) -> {
            System.exit(0);
        });
        stage.setScene(scene);
        stage.show();
        stage.setMinHeight(stage.getHeight());
        stage.setMinWidth(stage.getWidth());       
    }

    /**
     * The main() method is ignored in correctly deployed JavaFX application.
     * main() serves only as fallback in case the application can not be
     * launched through deployment artifacts, e.g., in IDEs with limited FX
     * support. NetBeans ignores main().
     *
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }

}
