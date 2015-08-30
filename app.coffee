express = require ( "express" )

app = express()

app.route "/hello"
  .get (req, res)->
    console.log "http request", process.pid
    res.send 'world'
    return

app.listen 3000, ()->
  console.log "listening", process.pid
  return
  

    



