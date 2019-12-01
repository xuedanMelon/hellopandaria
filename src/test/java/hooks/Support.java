package hooks;
import cucumber.api.java.Before;
import cucumber.api.java.After;
import cucumber.api.java.BeforeStep;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Support {

    private static final Logger logger = LoggerFactory.getLogger(Support.class);

    @Before("@request_auth")
    public void beforeAuth() {
        logger.info("Start to get auth Token");

    }

    @After("@request_auth")
    public void AfterAuth() {
        logger.info("After auth...");

    }

    @BeforeStep()
    public void beforeStep() {
        logger.info("Before Step...");

    }

}
