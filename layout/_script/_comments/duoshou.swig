{% if config.duoshuo_shortname and not config.disqus_shortname %}
  {% set duoshuo_shortname = config.duoshuo_shortname %}

  <script type="text/javascript">
    var duoshuoQuery = {short_name:"{{duoshuo_shortname}}"};
    (function() {
      var ds = document.createElement('script');
      ds.type = 'text/javascript';ds.async = true;
      ds.id = 'duoshuo-script';
      ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
      ds.charset = 'UTF-8';
      (document.getElementsByTagName('head')[0]
      || document.getElementsByTagName('body')[0]).appendChild(ds);
    })();
  </script>
{% endif %}