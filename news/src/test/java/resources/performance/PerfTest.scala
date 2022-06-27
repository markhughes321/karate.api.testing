package performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

class PerfTest extends Simulation {

  val protocol = karateProtocol()

  val listArticles = scenario("Get List Articles").exec(karateFeature("classpath:heniNews/performance/listArticles.feature"))

  setUp(
    listArticles.inject(rampUsers(10) during (5 seconds)).protocols(protocol)
  )

}