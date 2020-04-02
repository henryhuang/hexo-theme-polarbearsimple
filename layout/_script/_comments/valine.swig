<script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
<script src="//unpkg.com/valine@latest/dist/Valine.min.js"></script>
{% if theme.valine.enable and theme.valine.appid and theme.valine.appkey %}
  <script type="text/javascript">
    window.valine = new Valine({
        el: '#vcomment' ,
        verify: {{ theme.valine.verify }},
        notify: {{ theme.valine.notify }},
        appId: '{{ theme.valine.appid }}',
        appKey: '{{ theme.valine.appkey }}',
        placeholder: '{{ theme.valine.placeholder }}',
        visitor: {{ theme.valine.visitor }}
    });
  </script>
{% endif %}