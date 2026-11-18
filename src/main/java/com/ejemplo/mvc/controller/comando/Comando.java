
package com.ejemplo.mvc.controller.comando;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface Comando {

    /**
     * Ejecuta la acción y devuelve la ruta de la vista JSP
     * para que FrontControllerServlet realice el forward.
     * Si el comando ya resolvió la respuesta, devuelve null.
     */
    String ejecutar(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException;
}
