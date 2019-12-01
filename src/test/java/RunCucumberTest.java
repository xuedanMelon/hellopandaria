import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
//        plugin={"json:target/cucumber/cucumber.json", "html:target/cucumber", "pretty"},
        plugin = { "de.monochromata.cucumber.report.PrettyReports:target/cucumber" },
        features={"src/test/resources/"},
        glue = {"cucumber.api.spring",
                "hellocucumber",
                "com.github.jakimli.pandaria.hooks",
                "com.github.jakimli.pandaria"},
        tags = {"not @ignore"}
)
public class RunCucumberTest {
}
