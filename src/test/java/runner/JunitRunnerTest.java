package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {
                "src/test/resources/features/entitlement.feature",
                "src/test/resources/features/dummy1.feature",
                "src/test/resources/features/dummy2.feature",
                "src/test/resources/features/dummy3.feature",
                "src/test/resources/features/dummy4.feature",
        },
        glue = "stepDefinitions",  // Package where step definitions are located
        plugin = {"pretty", "html:target/junit/cucumber-reports.html", "summary"},
        snippets = CucumberOptions.SnippetType.CAMELCASE,
        monochrome = true,
        tags = "@Smoke or @Sanity"

)
public class JunitRunnerTest {

    @BeforeClass
    public static void beforeClass() {
        System.out.println("Test Environment Setup ..");
        System.out.println("Database restarting ..");
    }

    @AfterClass
    public static void afterClass() {
        System.out.println("Driver Close ...");
        System.out.println("Cleanup Activity ..");
    }
}
