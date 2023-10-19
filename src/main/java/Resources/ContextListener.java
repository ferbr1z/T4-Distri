package Resources;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@WebListener("application context listener")
public class ContextListener implements ServletContextListener {
    private static final Logger logger = LogManager.getLogger(ContextListener.class);

    @Override
    public void contextInitialized(ServletContextEvent event) {
        ServletContext context = event.getServletContext();
        String log4jConfigFile = context.getInitParameter("log4j-config-location");

        if (log4jConfigFile != null) {
            
            String fullPath = context.getRealPath("") + System.getProperty("file.separator") + log4jConfigFile;
            System.setProperty("log4j.configurationFile", fullPath);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
        // No es necesario realizar ninguna acción en la destrucción del contexto
    }
}
