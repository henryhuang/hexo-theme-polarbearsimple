<!DOCTYPE html>
<html lang="{{ connfig.language }}">
  <head>
    {% include '_partial/head.swig' %}
    <title>{% block title %}{% endblock %}</title>
  </head>

  <body>
    <div id="page">
      <header id="masthead">
        {%- include '_partial/header.swig' %}
      </header>
      <div id="content">
        {% block content %}{% endblock %}
      </div>

      <footer id="colophon">
        {%- include '_partial/footer.swig' %}
      </footer>

      <div class="back-to-top" id="back-to-top">
        <i class="iconfont icon-up"></i>
      </div>
    </div>
    {% include '_partial/search.swig' %}

    {% include '_script/comments.swig' %}
    {% include '_script/libs.swig' %}
    {% include '_script/theme.swig' %}
    {% include '_script/search.swig' %}
  
  <script type="application/ld+json">
  {
  "@context": "http://www.schema.org",
  "@type": "Person",
  "@id": "https://huangyijie.com/about/",
  "name": "黄奕杰",
  "alternateName": "Henry Huang",
  "nationality": "中国",
  "birthPlace" : {
    "@type": "Place",
      "address": {
        "@type": "PostalAddress",
      "addressLocality": "汕头市",
      "addressRegion": "广东省",
          "addressCountry": "中国"
    }
  },
  "gender": "Male",
  "Description": "Software Engineer",
  "disambiguatingDescription": "Full stack software engineer, focus on Java and JavaScript.",
  "jobTitle": "Software Engineer",
  "url": "https://huangyijie.com",
  "image": "https://s.gravatar.com/avatar/4e0e61fdf1b2bcfb4ee31da27601fe6b?s=512&r=g",
  "address": {
    "@type": "PostalAddress",
    "addressLocality": "深圳市",
    "addressRegion": "广东省",
    "addressCountry": "中国"
  },
  "sameAs": [
    "http://weibo.com/626242034",
    "https://github.com/henryhuang",
    "https://unsplash.com/@henryhh"
    ]
  }
  </script>
  </body>
</html>
