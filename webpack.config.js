var webpack = require("webpack");
var OpenBrowserWebpackPlugin = require("open-browser-webpack-plugin");
module.exports = {
  entry: "./app.js",
  output: {
    path: __dirname+ '/public/',
    filename: 'bundle.js'
  },
  plugins: [
    new webpack.ProvidePlugin({
      riot: 'riot'
    }),
    new OpenBrowserWebpackPlugin({
      url: 'http://localhost:1337'
    })
  ],
  module: {
    preLoaders: [
      { test: /\.tag$/, exclude: /node_modules/, loader: 'riotjs-loader', query: {type: 'none'}}
    ],
    loaders: [
      {test: /\.js$|\.tag$/, exclude: /node_modules/, loader: "babel-loader"}
    ]
  },
  devServer: {
    contentBase: './public',
    port: 1337,
    hot:true,
    inline: true
  }

};
