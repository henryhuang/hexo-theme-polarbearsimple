{% extends "_layout.swig" %}
{% import '_macro/archive_index.swig' as archive_template %}

{% block title %}
  {{ config.title }}
{% endblock %}

{% block content %}
  {{ archive_template.render() }}
{% endblock %}