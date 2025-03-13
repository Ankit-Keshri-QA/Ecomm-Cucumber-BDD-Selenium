package stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Demo_Steps {
    @Given("I am on the Store Page")
    public void iAmOnTheStorePage() {
    }

    @When("I add a {string} to the Cart")
    public void iAddAToTheCart(String arg0) {
    }

    @Then("I see {int} {string} in the Cart")
    public void iSeeInTheCart(int arg0, String arg1) {
    }
}
