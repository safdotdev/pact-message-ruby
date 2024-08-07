bundle exec bin/pact-message update '{
  "description": "a test mesage",
  "providerStates": [
    {
      "name": "an alligator named Mary exists"
    }
  ],
  "contents": {
    "name": "Mary"
  },
  "matchingRules": {
    "body": {
      "$.name": {
        "matchers": [
          {
            "match": "type"
          }
        ]
      }
    }
  }
}
' --consumer Foo --provider Bar --pact-dir ./tmp --pact-specification-version 3.0.0