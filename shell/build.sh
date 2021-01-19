###
 # @Date: 2021-01-19 16:09:53
 # @LastEditors: sam
 # @LastEditTime: 2021-01-19 16:39:06
 # @FilePath: /mobile-ui-practice/shell/build.sh
### 

#下载依赖
rm -rf node_modules
npm cache clean -f
cnpm i

# 清空dist目录中的旧文件
echo '正在清除原有dist文件...'
rm -rf dist/*.css

# 打包出不压缩的CSS文件tuitui-ui.css
echo '正在生成tuitui-ui.css文件...'
npx postcss src/ui.css -o dist/ui.css -u postcss-import autoprefixer --no-map 

# 打包出被压缩的CSS文件tuitui-ui.min.css
echo '正在生成tuitui-ui.min.css文件...'
npx postcss src/ui.css -o dist/ui.min.css -u postcss-import autoprefixer cssnano --no-map 
