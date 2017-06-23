#!/bin/sh
curl -XPUT http://localhost:9200/youtube/_mapping/places -d '
{
  "properties": {
    "location": { 
      "type":     "text",
      "fielddata": true
    },
     "category": { 
      "type":     "text",
      "fielddata": true
    }
  }
}'