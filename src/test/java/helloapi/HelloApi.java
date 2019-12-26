package helloapi;
import com.github.jakimli.pandaria.domain.Variables;
import cucumber.api.java.en.Given;
import org.springframework.beans.factory.annotation.Autowired;

public class HelloApi  {

    @Autowired
    Variables variables;

    @Given("var: {string}={string} + {string}")
    public void defineStringVariableByTwoVariables(String key, String value1, String value2) {
        variables.assign(key, variables.interpret(value1+value2));
    }
}
