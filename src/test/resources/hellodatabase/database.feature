Feature: hello database
  This is a the first feature for pandaria to test database

  Scenario: hello database

    * var: 'name'='jakim'
    * query:
    """
    SELECT NAME, AGE FROM USERS WHERE NAME='${name}'
    """
    * verify: '$[0].name'=${name}
    * verify: '$[0].age'=18