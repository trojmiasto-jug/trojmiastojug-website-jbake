#!/usr/bin/env groovy

@Grapes([
  @Grab('io.ratpack:ratpack-groovy:1.4.4'),
  @Grab(group='org.slf4j', module='slf4j-api', version='1.7.22'),
  @Grab(group='org.slf4j', module='slf4j-simple', version='1.7.22')
])
import static ratpack.groovy.Groovy.ratpack

ratpack {
  handlers {
    files { f -> f.dir('build/jbake').indexFiles('index.html') }
  }
}
