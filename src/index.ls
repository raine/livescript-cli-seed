require 'source-map-support' .install!
require! {fs, path}

fs.createReadStream path.join __dirname, '../README.md'
  .pipe process.stdout
