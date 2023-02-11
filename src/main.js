import createApp from './app.js'
import * as handlers from './handlers/index.js'

const port = process.env.PORT ?? 3000
createApp(handlers)
  .listen(port, () => {
    console.log(`🚀 Server listening at: ${port}`)
  })
