{% macro render() %}
<div id="primary">
  <section id="archive" class="archive">

    {% for post in page.posts %}

      {% set year %}
      {% set post.year = date(post.date, 'YYYY') %}

      {% if post.year !== year %}
        {% set year = post.year %}
        <div class="collection-title">
          <h2 class="archive-year">{{ year }}</h2>
        </div>
      {% endif %}

      <div class="archive-post">
        <span class="archive-post-time">
          {{ date(post.date, 'MMM D') }}
        </span>
        <span class="archive-post-title">
          <a href="{{ url_for(post.path) }}" class="archive-post-link">
            {{ post.title }}
          </a>
        </span>
      </div>
    {% endfor %}
  </section>
 </div>

  {% include '../_partial/pagination.swig' %}
{% endmacro %}
