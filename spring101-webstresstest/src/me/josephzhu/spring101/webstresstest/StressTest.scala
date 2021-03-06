package me.josephzhu.spring101.webstresstest

import io.gatling.core.Predef._
import io.gatling.core.scenario.Simulation
import io.gatling.http.Predef._

class StressTest extends Simulation {

  val scn = scenario("data").repeat(1000) {
    exec(
      http("data")
        .get("http://localhost:8080/saveData?size=5&length=1000")
        .header("Content-Type", "application/json")
        .check(status.is(200)).check(substring("payload")))
  }

  setUp(scn.inject(atOnceUsers(200)))
}
