package com.darlan.aws.codepipeline.awscodepipelinecd

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
class AwsCodePipelineApplication

@RestController
class HelloController {
    @GetMapping("/hi")
    fun sayHi() = "Hi there! (v1)"
}

fun main(args: Array<String>) {
    runApplication<AwsCodePipelineApplication>(*args)
}