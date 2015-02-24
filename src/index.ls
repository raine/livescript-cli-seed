require! {fs, path}

fs.createReadStream path.join __dirname, '../README.md'
  .pipe process.stdout
