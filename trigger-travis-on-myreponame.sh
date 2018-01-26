TARGET_OWNER=iriberri
TARGET_REPO=travis-experiments

body='{ "request": { "branch":"master", "message": "Build triggered by $TRAVIS_REPO_SLUG" }}'

# For Private Projects in travis-ci.com
#
curl -s -X POST \
     -H "Content-Type: application/json" \
     -H "Accept: application/json" \
     -H "Travis-API-Version: 3" \
     -H "Authorization: token $TRAVIS_TOKEN" \
     -d "$body" \
     https://api.travis-ci.com/repo/$TARGET_OWNER%2F$TARGET_REPO/requests
     
# For Public Projects in travis-ci.org
# 
# curl -s -X POST \
#      -H "Content-Type: application/json" \
#      -H "Accept: application/json" \
#      -H "Travis-API-Version: 3" \
#      -H "Authorization: token $TRAVIS_TOKEN" \
#      -d "$body" \
#      https://api.travis-ci.org/repo/$TARGET_OWNER%2F$TARGET_REPO/requests    
