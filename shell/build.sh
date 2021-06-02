# 清空dist目录中的旧文件 echo '正在清除原有dist文件...' rm -rf dist/*.css
# 打包出不压缩的CSS文件xr-ui.css
echo '正在生成xr-ui.css文件...'
npx postcss src/xr-ui.css -o dist/xr-ui.css -u postcss-import autoprefixer --no-map
# 打包出被压缩的CSS文件xr-ui.min.css
echo '正在生成xr-ui.min.css文件...'
npx postcss src/xr-ui.css -o dist/xr-ui.min.css -u postcss-import autoprefixer cssnano --no-map