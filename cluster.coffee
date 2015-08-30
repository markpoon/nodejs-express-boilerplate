express_cluster = require('express-cluster')
cluster = require('cluster')
require('./logging')

if cluster.isMaster
else if cluster.isChild
else
return

express_cluster(w)->
  require('./app')
  return

