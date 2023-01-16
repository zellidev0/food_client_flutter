#!/bin/bash

gq https://super-chigger-54.hasura.app/v1/graphql -H 'X-Hasura-Access-Key: 479mMb5g4g5zESHV2Xp2xGEixaD0X7YdeOFMFdRcz0ADeRrRrW0nc1mQbb1haeE5' --introspect > ./lib/schema.graphql
sed -i '' "s/String:/_String:/g" ./lib/schema.graphql
dart run build_runner build
mv lib/schema.graphql.dart lib/graphql/schema.graphql.dart
mv lib/queries.graphql.dart lib/graphql/queries.graphql.dart
mv lib/mutations.graphql.dart lib/graphql/mutations.graphql.dart