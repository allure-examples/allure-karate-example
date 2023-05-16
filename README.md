
## Allure Karate Example

### Getting Started

To generate Allure Test Results you should perform following steps:

```bash
$ git clone https://github.com/allure-examples/allure-karate-example.git
```
Add hook AllureKarate() to the Karate runner builder. If you don't use JUnit runner, you can add hook to the runner like that:

```java
com.intuit.karate.Runner.builder()
.hook(new AllureKarate())
```

By default test results will be generated to `allure-results` folder. To generate and open genearted report, you need to run following command of allure commandline:

```bash
$  allure serve allure-results
```

There is another way of generating the report. The generated report can be opened via command `allure open allure-report`. The command to generate the report is the following:

```bash
$ allure generate
```

### More

* [Documentation](https://docs.qameta.io/allure/2.0/)
* [Issue Tracking](https://github.com/allure-framework/allure2/issues?labels=&milestone=&page=1&state=open)
* Gitter chat room: [https://gitter.im/allure-framework/allure-core](https://gitter.im/allure-framework/allure-core)
* StackOverflow tag: [Allure](http://stackoverflow.com/questions/tagged/allure)

