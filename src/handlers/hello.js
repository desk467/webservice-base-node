import Express from 'express'

export function getHello(req, res) {
  res.send('OK')
}

export function defineRouting() {
  const router = Express.Router()

  // Routes
  router.get('/', getHello)

  return router
}
