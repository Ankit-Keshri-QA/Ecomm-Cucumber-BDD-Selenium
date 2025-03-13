package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {
                "src/test/java/dummyFeatureFolder/entitlement.feature"
        },
        glue = "stepDefinitions",  // Package where step definitions are located
        plugin = {"pretty", "html:target/cucumber-reports.html"},
        monochrome = true
)
public class JunitRunnerTest {

    @BeforeClass
    public static void beforeClass(){
        System.out.println("Test Environment Setup ..");
        System.out.println("Database restarting ..");
    }

    @AfterClass
    public static void afterClass(){
        System.out.println("Driver Close ...");
        System.out.println("Cleanup Activity ..");
    }
}
