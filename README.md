# Table of Contents
- [Table of Contents](#table-of-contents)
  - [Purpose](#purpose)
  - [Backend](#backend)
  - [Frontend](#frontend)
  - [Search Engine](#search-engine)
  - [LDAP Providers](#ldap-providers)
  - [Contributing guidelines](#contributing-guidelines)
## Purpose
The purpose of this software is to allow users to spin up a content management system that allows the creation of articles, and e-commerce items.

## Backend
The backend is written in Go, uses gqlgen to generate resolves from the schema, and is used as a git submodule within the project.

The backend is responsible for creating article data, and e-commerce.

It is also responsible for connecting ldap providers to the frontend, 

## Frontend
The frontend is a React based admin panel that is very customizable. 

Currently on React 17.

## Search Engine
Zinc is the search engine of choice, however Elasticsearch can be swapped in and will provide similar functionalities with the current queries and mutations.

## LDAP Providers
Currently the project offers support for Zitadel, however more ldap providers will be rolled out.

## Contributing guidelines
To contribute to the project, create an issue.

A template is provided when creating an issue. 

After this is complete, fork the project and work within that fork. 

Once changes are complete, create a pull request and the team will review your pull request. 
