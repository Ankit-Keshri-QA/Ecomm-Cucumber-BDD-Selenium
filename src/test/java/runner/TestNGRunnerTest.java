package runner;


import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;

@CucumberOptions(
        features = {
                "src/test/java/dummyFeatureFolder/entitlement.feature"},
        glue = "stepDefinitions",  // Package where step definitions are located
        plugin = {"pretty", "html:target/cucumber-reports.html"},
        monochrome = true)
public class TestNGRunnerTest extends AbstractTestNGCucumberTests {

    @BeforeClass
    public static void setup() {
        System.out.println("Driver Initialization ...");
    }

    @AfterClass
    public static void tearDown() {
        System.out.println("Browser Close ...");
    }

}
