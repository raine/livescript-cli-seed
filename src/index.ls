require 'source-map-support' .install!
require! {fs, path}

fs.create-read-stream path.join __dirname, '../README.md'
  .pipe process.stdout
