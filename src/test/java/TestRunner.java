import com.intuit.karate.junit5.Karate;
import io.qameta.allure.karate.AllureKarate;

public class TestRunner {

    @Karate.Test
    public Karate testApi() {
        return Karate
                .run("classpath:testdata/api.feature", "classpath:testdata/web.feature")
                .hook(new AllureKarate())
                .relativeTo(getClass())
                .outputJunitXml(true);
    }
}
