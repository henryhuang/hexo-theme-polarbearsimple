# hexo-theme-polarbearsimple

修改自 [hexo-theme-polarbear](https://github.com/frostfan/hexo-theme-polarbear)，主要使用了 Archive 直接作为首页。

[在线预览 Demo](https://huangyijie.com)

## 安装使用（Installation）
```
$ npm install hexo-renderer-scss --save
$ git clone https://github.com/henryhuang/hexo-theme-polarbearsimple themes/polarbearsimple
```

修改（Change） polarbear/config.yml `theme: polarbearsimple`

```
# Extensions
## Plugins: http://hexo.io/plugins/
## Themes: http://hexo.io/themes/
theme: polarbearsimple

# 在归档页面显示所有文章 （Show all articles at archive page.）
# 需要安装(Need to install) hexo-generator-archive 插件支持
archive_generator:
    per_page: 0
    yearly: false
    monthly: false
    daily: false
```

## 添加 Algolia搜索

添加 hexo-algoliasearch 插件
```
npm install --save hexo-algoliasearch
```

在网站的**_config.yml**里配置：

```
algolia:
  appId: "<APP_ID>"
  apiKey: "<API_KEY>"
  adminApiKey: "<ADMIN_API_KEY>"
  chunkSize: 5000
  indexName: "<INDEX_NAME>"
  fields:
  - content:strip:truncate,0,500
  - excerpt:strip
  - permalink
  - cover
  - slug
  - tags
  - categories
  - title
```
