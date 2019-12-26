@http
Feature: hello world
  This is a the first feature for pandaria

#  Scenario: hello world
#    * uri: https://github.com
#    * send: GET
#    * status: 200

  Scenario: test response json value
    * uri: http://localhost:5000/users/me
    * send: GET
    * status: 200
    * var: 'xing'='xue'
    * var: 'ming'='dan'
    * var: 'name1'="xue" + "${ming}"
    * verify: '$.name'="${name1}"
    * var: 'name2'="xue" + "dan"
    * verify: '$.name'="${name2}"
    * var: 'name3'="${xing}" + "dan"
    * verify: '$.name'="${name3}"
    * var: 'name'="${xing}" + "${ming}"
    * verify: '$.name'="${name}"
    * verify: '$.age'=18

#  Scenario: test request token
#    # Get token from api
#    * uri: http://localhost:5000/getToken
#    * request body:
#    """
#    {"user_name"："me"}
#    """
#    * send: POST
#    * status: 200
#    * var: 'token'="$.token"
#
#    # request for other uses
#    * uri: http://localhost:5000/users/me
#    * header: 'authToken'='${token}'
#    * send: GET
#    * status: 200
#    * verify: '$.name'='xuedan'
#    * verify: '$.age'=18
