const path = require('path');
const webpack = require('webpack');
const InlineEnviromentVariablesPlugin = require('inline-environment-variables-webpack-plugin');
console.log(process.env);
const ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports =  [
    {
        // context: path.join(__dirname, './src'),
        entry: {
            app: [
                'bootstrap-loader',
                './src/scripts/index.js'],
            vendor: [
            // /path/to/の部分に設定ファイルまでのパスを指定する
            'bootstrap-loader'
            ],
        },
        output: {
            path: path.join(__dirname, 'app'),
            // filename: 'bundle.js'
            filename: "scripts/[name].js",
        },
        module: {
            rules: [
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
                    $: "jquery",
    jQuery: "jquery",
    "window.jQuery": "jquery",
    Tether: "tether",
    "window.Tether": "tether",
    Alert: "exports-loader?Alert!bootstrap/js/dist/alert",
    Button: "exports-loader?Button!bootstrap/js/dist/button",
    Carousel: "exports-loader?Carousel!bootstrap/js/dist/carousel",
    Collapse: "exports-loader?Collapse!bootstrap/js/dist/collapse",
    Dropdown: "exports-loader?Dropdown!bootstrap/js/dist/dropdown",
    Modal: "exports-loader?Modal!bootstrap/js/dist/modal",
    Popover: "exports-loader?Popover!bootstrap/js/dist/popover",
    Scrollspy: "exports-loader?Scrollspy!bootstrap/js/dist/scrollspy",
    Tab: "exports-loader?Tab!bootstrap/js/dist/tab",
    Tooltip: "exports-loader?Tooltip!bootstrap/js/dist/tooltip",
    Util: "exports-loader?Util!bootstrap/js/dist/util",
            })
        ]
    }
];