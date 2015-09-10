express_cluster = require 'express-cluster'
cluster = require 'cluster'

if cluster.isMaster
  console.log "master!"
else if cluster.isWorker
  console.log "child!"
else
  console.log "alien!"

express_cluster(
  (w)->
    require './app'
    return
, {verbose: true}
)

