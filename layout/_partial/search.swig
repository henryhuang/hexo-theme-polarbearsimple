{% if config.algolia %}
    <div id="search-container" class="search-container">
        <input type="hidden" id="algolia_index" value="{{ config.algolia.indexName }}"/>
        <input type="hidden" id="algolia_app_id" value="{{ config.algolia.appId }}"/>
        <input type="hidden" id="algolia_token" value="{{ config.algolia.apiKey }}"/>
        <div class="section">
            <div class="container">

                <div class="panel">
                    <div class="panel-heading">
                        {{ __('site.search') }}
                        <a id="close" href="" style="float: right; color: #363636;">
                            <i class="fas fa-times-circle" aria-hidden="true"></i>
                        </a>
                    </div>
                    <div class="panel-block">
                        <div id="searchContainer" class="control has-icons-left">
                            <input id="searchField" class="input" type="text" placeholder="{{ __('site.searchPlaceHolder') }}">
                            <span class="icon is-small is-left">
            <i class="fas fa-search" aria-hidden="true"></i>
          </span>
                        </div>
                    </div>
                    <div id="result">

                    </div>
                </div>

            </div>
        </div>
    </div>
{% endif %}
