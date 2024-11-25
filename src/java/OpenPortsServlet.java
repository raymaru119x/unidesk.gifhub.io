import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.ServerSocket;

@WebServlet("/OpenPortsServlet")
public class OpenPortsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        StringBuilder ports = new StringBuilder();
        ports.append("<ul>");
        for (int port = 1; port <= 2024; port++) {
            try (ServerSocket serverSocket = new ServerSocket(port)) {
            } catch (IOException e) {
                ports.append("<li>Puerto " + port + " está abierto</li>");
            }
        }
        ports.append("</ul>");

        out.print("{\"ports\":\"" + ports.toString() + "\"}");
        out.flush();
    }
}
