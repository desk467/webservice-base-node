import Express from 'express'

function createApp(handlers) {
  const app = Express()

  for (const handler of Object.values(handlers)) {
    app.use(handler())
  }

  return app
}

export default createApp
