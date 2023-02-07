import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class testAPI {

    public testAPI() {

    }

    public void test() throws Exception{
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create("https://api-handball.p.rapidapi.com/leagues"))
                .header("X-RapidAPI-Key", "5849c04a8cmsh8e4d2ad6b92a301p1c39fajsn3a3d8d2b9805")
                .header("X-RapidAPI-Host", "api-handball.p.rapidapi.com")
                .method("GET", HttpRequest.BodyPublishers.noBody())
                .build();
        HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
        System.out.println(response.body());
    }
}