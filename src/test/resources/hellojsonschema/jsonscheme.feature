@ignore
@verify_json_schema
Feature: verify json schema
  verify if json valid for json schema

  Background:
    * dir: hellojsonschema
    * base uri: http://localhost:5000

  Scenario: verify json schema
    * uri: /products/1
    * send: get
    * verify: '$' conform to:
    """
    {
    "$schema": "http://json-schema.org/draft-07/schema#",
    "$id": "http://example.com/product.schema.json",
    "title": "Product",
    "description": "A product in the catalog",
    "type": "object"
    }
    """

    * verify: '$.tags' conform to:
    """
    {
      "definitions": {},
      "$schema": "http://json-schema.org/draft-07/schema#",
      "$id": "http://example.com/root.json",
      "type": "array",
      "title": "The Root Schema",
      "items": {
        "$id": "#/items",
        "type": "string",
        "title": "The Items Schema",
      "default": "",
      "examples": [
        "home",
        "green"
      ],
      "pattern": "^(.*)$"
  }
}
    """