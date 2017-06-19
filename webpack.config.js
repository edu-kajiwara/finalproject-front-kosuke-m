const path = require('path');
const webpack = require('webpack');
const InlineEnviromentVariablesPlugin = require('inline-environment-variables-webpack-plugin');
console.log(process.env);
const ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports =  [
    {
        // context: path.join(__dirname, './src'),
        entry: {
            app: './src/scripts/index.js',
            vendor: [
            // /path/to/の部分に設定ファイルまでのパスを指定する
            "materialize-loader!./materialize.config.js",
            ]
        },
        output: {
            path: path.join(__dirname, 'app'),
            // filename: 'bundle.js'
            filename: "scripts/[name].js",
        },
        module: {
            rules: [
                { 
                    test: /\.scss$/, 
                    use: ExtractTextPlugin.extract({
                        fallback: "style-loader",
                        use: ["css-loader", "postcss-loader", "sass-loader"]
                    })
                },
                { 
                    test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/, 
                    loader:"url-loader", 
                    query: { 
                        limit: 10000, 
                        mimetype: "application/font-woff" 
                    }
                },
                { 
                    test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/, 
                    loader: "file-loader" 
                },
                {
                    test: /\.tag$/,
                    exclude: /node_modules/,
                    enforce: 'pre',
                    use: [
                        {
                            loader: 'riot-tag-loader',
                            options: {
                                debug: true
                            }
                        }
                    ]
                },
                {
                    test: /\.js$|\.tag$/,
                    enforce: 'post',
                    exclude: /node_modules/,
                    use: [
                        {
                            loader: 'babel-loader',
                            options: {
                                presets: `es2015-riot`
                            }
                        }
                    ]
                }
            ]
        },
        resolve: {
            extensions: ['*', '.js', '.tag']
        },
        plugins: [
            new InlineEnviromentVariablesPlugin(process.env),
            new webpack.ProvidePlugin({
                riot: 'riot',
                fetch: "imports-loader?this=>global!exports-loader?global.fetch!whatwg-fetch",
            })
        ]
    }
];