module.exports = {
  entry: "./entry.js",
  output: {
    path: __dirname,
    filenamg: 'bundle.js'
  },
  module: {
    loaders: [
      {test: /\.css$/, loader: "style!css"}
    ]
  }

};
