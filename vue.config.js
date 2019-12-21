module.exports = {
    pages: {
        index: {
            entry: 'src/pages/index/main.js',
            template: 'public/index.html',
            title: 'Index',
            chunks: ['chunk-vendors', 'chunk-common', 'index']
        },
        main: {
            entry: 'src/pages/main/main.js',
            template: 'public/index.html',
            title: 'Main',
            chunks: ['chunk-vendors', 'chunk-common', 'main']
        },
    }
}
