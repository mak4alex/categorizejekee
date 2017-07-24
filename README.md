# Categorizejekee

## Functional model

- Create project
- Load products from \*sv file to the system
- Input categories
- Categorize products by categories
  - Generate suggests for possible product category match
- Download result file

## Information model

### Project

prop | type
---- | -------
id   | integer
name | string

### Category

prop       | type
---------- | -------
id         | integer
name       | string
project_id | integer

### Product

prop   | type
------ | -------
id     | integer
status | string

### Match

prop        | type
----------- | -------
category_id | integer
product_id  | integer

### Definition

prop       | type
---------- | -------
id         | integer
name       | string
project_id | integer

### Value

prop          | type
------------- | -------
definition_id | integer
product_id    | integer
value         | string
type          | string
