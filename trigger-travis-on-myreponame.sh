TARGET_REPO=iriberri/travis-experiments

body='{ "request": { "branch":"master", "message": "Build triggered by $TRAVIS_REPO_SLUG" }}'

curl -s -X POST \
     -H "Content-Type: application/json" \
     -H "Accept: application/json" \
     -H "Travis-API-Version: 3" \
     -H "Authorization: token $TRAVIS_TOKEN" \
     -d "$body" \
     https://api.travis-ci.com/repo/$TARGET_REPO/requests
     
