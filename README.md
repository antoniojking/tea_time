<h1 align="center">Tea Time API</h1>

<p align="center">
  <a href="https://github.com/antoniojking/tea_time/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/antoniojking/tea_time?style=for-the-badge" alt="contributors_badge">
  </a>
  <a href="https://github.com/antoniojking/tea_time/issues">
    <img src="https://img.shields.io/github/issues/antoniojking/tea_time?style=for-the-badge" alt="issues_badge">
  </a>
  <a href="https://github.com/antoniojking/tea_time/network/members">
    <img src="https://img.shields.io/github/forks/antoniojking/tea_time?style=for-the-badge" alt="forks_badge">
  </a>
  <a href="https://github.com/antoniojking/tea_time/stargazers">
    <img src="https://img.shields.io/github/stars/antoniojking/tea_time?style=for-the-badge" alt="stars_badge">
  </a>
</p>

<p align="center">
  <a href="#about-the-project">About The Project</a> •
  <a href="#technologies">Technologies</a> •
  <a href="#local-setup">Local Setup</a> •
  <a href="#testing">Testing</a> •
  <a href="#getting-started">Getting Started</a> •
  <a href="#endpoints">Endpoints</a> •
  <a href="#database-schema">Database Schema</a> •
  <a href="#contributors">Contributors</a> •
  <a href="#acknowledgements">Acknowledgements</a>
</p>

## About The Project

The Tea Time API is a RESTful API for a tea subscription service. You may hit the endpoints through an http request helper such as Postman.

### Learning Goals

* A strong understanding of Rails
* Ability to create restful routes
* Demonstration of well-organized code, following OOP
* Test Driven Development
* Clear documentation

## Technologies

<p align="center">
  <b>Framework</b><br>
  <img src="https://img.shields.io/badge/ruby%20on%20rails-b81818.svg?&style=for-the-badge&logo=rubyonrails&logoColor=white" />
</p>

<p align="center">
  <b>Languages</b><br>
  <img src="https://img.shields.io/badge/ruby-CC342D.svg?&style=for-the-badge&logo=ruby&logoColor=white" />
  <img src="https://img.shields.io/badge/SQL-4169E1.svg?style=for-the-badge&logo=SQL&logoColor=white" />
</p>

<p align="center">
  <b>Tools</b><br>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=for-the-badge&logo=atom&logoColor=white" />  
  <img src="https://img.shields.io/badge/git-F05032.svg?&style=for-the-badge&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=for-the-badge&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=for-the-badge&logo=postgresql&logoColor=white" />
</p>

<p align="center">
  <b>Processes</b><br>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=for-the-badge&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=for-the-badge&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=for-the-badge&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=for-the-badge&logo=REST&logoColor=white" />  
</p>

<div align="center">

| Development | Testing       | Dependencies          |
|:-----------:|:-------------:|:---------------------:|
|             |               |                       |
|             |               |                       |
|             |               |                       |
|             |               |                       |
|             |               |                       |

</div>


## Local Setup

1. Fork and clone this repo into your local project directory

2. Install dependencies
   ```
   $
   ```

3. Create the database
   ```
   $
   ```

4. Migrate database tables
   ```
   $
   ```

8. Run server
   ```
   $rails s
   ```

## Testing

- To run the test suite:
  ```
  $
  ```

- To assess test coverage:
  ```
  $
  ```

## Getting Started

The `base path` of each endpoint is:

```
https://localhost:3000/
```

- For `GET` requests, you can simply send the endpoint requests through your internet browser.  
- For any other requests (i.e. `POST`, `PATCH`, `DELETE`), you will need to use an API client to provide the request body and access the endpoints.

## Endpoints

The following table presents each API endpoint and its documentation.  

HTTP Verb | Endpoint              | Description                                | Docs
----------|-----------------------|--------------------------------------------|------
GET       | /customers/:id        | Get all customer subscriptions             | [doc](./docs/customers_endpoint.md)
POST      | /subscriptions/       | Subscribe to a new tea subscription        | [doc](./docs/subscriptions_endpoint.md)
PATCH     | /subscriptions/:id/   | Cancel a customer's tea subscription       | [doc](./docs/subscriptions_endpoint.md)

## Database Schema
![Tea Time Database Schema](/storage/images/schema.png)

## Contributors

<center>

![](https://avatars.githubusercontent.com/u/81713591?s=150)  |
 :--:    |
 **Antonio King** |
 [GitHub](https://github.com/antoniojking)  |
 [LinkedIn](https://www.linkedin.com/in/antoniojking/)|

</center>

## Acknowledgements

* [Turing School of Software and Design](https://turing.edu/)
  - Project created for completion towards Backend Engineering Program
