# Karate API Testing

Karate is an open-source tool to for API test and performance automation.

## Installation

Clone the repository

```bash
git clone https://github.com/jhads/karate.api.heni-news
```

Open project root folder

```bash
cd karate.api.testing
```

## Usage

Once you are in the root directory, you can run the project using the below commands

```python
# Runs all feature files
mvn test

# Removes all files generated by the previous build
mvn clean test

# Runs project by folder name:
mvn clean test -pl :analytics
mvn clean test -pl :leviathan
mvn clean test -pl :news

# Runs the project using tags
mvn clean test "-Dkarate.options=--tags @HeniNews"

## Runs the project by name and tags:
mvn clean test -pl :leviathan "-Dkarate.options=--tags @leviathan"

# Run Gatling Performance test by project name
mvn clean test-compile gatling:test -pl :news

```

## Contributing

Please follow the naming convention for branches [branches](https://byorl.atlassian.net/wiki/spaces/QA/pages/1069776897/Branch+Naming+Convention).

```bash
# Branching
ticketNumber-shortDescription

# Example
HENI-875-create-repository-for-karate-api-testing-framework
```

## Documentation

[Karate API Official Documentation](https://github.com/karatelabs/karate)

[Udemy Training Course](https://www.udemy.com/course/karate-dsl-api-automation-and-performance-from-zero-to-hero/)

## Dependencies

[Java 1.8](https://www.oracle.com/uk/java/technologies/javase/javase8-archive-downloads.html)

[Maven](https://www.baeldung.com/install-maven-on-windows-linux-mac)

[Video Tutorial](https://www.youtube.com/watch?v=9S5lqB11OPI&t=183s)

## VS Code Plugins

Cucumber Gherkin Full Support

Karate Runner

Java Extension Pack

Scala Syntax (Official)

## Team

Mark Hughes [m.hughes@heni.com](mailto:m.hughes@heni.com)

Ola Bale [o.bale@heni.com](mailto:o.bale@heni.com)

Ankur Gamit [a.gamit@heni.com](mailto:a.gamit@heni.com)
