const { environment } = require('@rails/webpacker')

module.exports = environment
const custom = {
  resolve: {
    alias: {
      jquery: 'jquery/src/jquery',
    }
  }
}

environment.config.merge(custom)
