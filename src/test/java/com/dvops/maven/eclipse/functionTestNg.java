package com.dvops.maven.eclipse;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.AfterTest;
import org.testng.Assert; 

public class functionTestNg {
	
	  private WebDriver webDriver;		
	  
	  @Test
	  public void checkTitles() {
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/login.jsp");
		  Assert.assertEquals(webDriver.getTitle(), "Trivia Quiz");
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/register.jsp");
		  Assert.assertEquals(webDriver.getTitle(), "Trivia Quiz");
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/forgetpassword.jsp");
		  Assert.assertEquals(webDriver.getTitle(), "Trivia Quiz");
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/index.jsp?username=admin&password=password&email=admin@gmail.com");
		  Assert.assertEquals(webDriver.getTitle(), "Trivia Quiz");
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/about.jsp?username=admin&password=password&email=admin@gmail.com");
		  Assert.assertEquals(webDriver.getTitle(), "Trivia Quiz");
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/howtoplay.jsp?username=admin&password=password&email=admin@gmail.com");
		  Assert.assertEquals(webDriver.getTitle(), "Trivia Quiz");
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/quiz.jsp?username=admin&password=password&email=admin@gmail.com");
		  Assert.assertEquals(webDriver.getTitle(), "Trivia Quiz");
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/quizresults.jsp?username=admin&password=password&email=admin@gmail.com");
		  Assert.assertEquals(webDriver.getTitle(), "Trivia Quiz");
	  }
	  
	  @Test
	  public void checkLinks() {
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/login.jsp");
		  webDriver.findElement(By.linkText("Register Here")).click();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("register"));
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/login.jsp");
		  webDriver.findElement(By.linkText("Click Here")).click();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("forgetpassword"));
		  
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/register.jsp");
		  webDriver.findElement(By.linkText("Login Here")).click();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("login"));
		  
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/index.jsp?username=admin&password=password&email=admin@gmail.com");
		  webDriver.findElement(By.linkText("Start Quiz")).click();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("quiz."));
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/index.jsp?username=admin&password=password&email=admin@gmail.com");
		  webDriver.findElement(By.linkText("How to Play")).click();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("howtoplay"));
		  
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/howtoplay.jsp?username=admin&password=password&email=admin@gmail.com");
		  webDriver.findElement(By.linkText("Go Back")).click();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("index"));
		  
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/quizresults.jsp?username=admin&password=password&email=admin@gmail.com");
		  webDriver.findElement(By.linkText("Return")).click();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("index"));
		  
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/index.jsp?username=admin&password=password&email=admin@gmail.com");
		  webDriver.findElement(By.id("logoutButton")).click();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("login"));
	  }
	  
	  @Test
	  public void checkForms() {
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/login.jsp");
		  webDriver.findElement(By.name("username")).sendKeys("admin");
		  webDriver.findElement(By.name("password")).sendKeys("password");
		  webDriver.findElement(By.id("loginButton")).submit();
		  webDriver.switchTo().alert().dismiss();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("index"));
		  
		  webDriver.navigate().to("http://localhost:8090/TriviaQuizWeb/forgetpassword.jsp");
		  webDriver.findElement(By.name("username")).sendKeys("admin");
		  webDriver.findElement(By.name("email")).sendKeys("admin@gmail.com");
		  webDriver.findElement(By.id("retrievepassword")).submit();
		  Assert.assertTrue(webDriver.getCurrentUrl().contains("retrievepassword"));
	  }	  
	  
	  @BeforeTest
	  public void beforeTest() {
		  String chromeDriverDir = "C:\\Program Files\\Google\\Chrome\\chromedriver.exe";
		  System.setProperty("webdriver.chrome.driver", chromeDriverDir);
		  webDriver = new ChromeDriver();  
	  }

	  @AfterTest
	  public void afterTest() {	
	  }

}
