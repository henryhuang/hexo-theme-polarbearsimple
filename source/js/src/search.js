/**
 * Created by Henry Huang on 2019/7/13.
 */

var appId = $('#algolia_app_id').val();
var indexName = $('#algolia_index').val();
var token = $('#algolia_token').val();

var client = algoliasearch(appId, token, {});
var index = client.initIndex(indexName);

var buildTags = function (tags) {
  var ret = '<small>';
  ret = ret + tags.map(function (t) {
    return t.value
  }).join(' · ');
  ret = ret + '</small>';
  return ret;
};

var buildItem = function (itemRaw) {

  return '<div class="panel-block">' +
      '<a href="' + itemRaw.permalink.value + '">' +
      '<article class="media">' +
      '<figure class="media-left">' +
      '<p class="image is-64x64">' +
      '<img src="' + (itemRaw.cover && itemRaw.cover.value
          ? itemRaw.cover.value
          : "http://githubimg.wxio.club/h.png") + '">' +
      '</p>' +
      '</figure>' +
      '<div class="media-content">' +
      '<div class="content">' +
      '<strong>' + itemRaw.title.value + '</strong>' +
      '<br>' +
      buildTags(itemRaw.tags) +
      '<br>' +
      itemRaw.contentStripTruncate.value +
      '</div>' +
      '</div>' +
      '</article>' +
      '</a>' +
      '</div>';

};

var hitsStored = [];

var search = function (query) {
  $('#searchContainer').addClass('is-loading');
  index.search({
    query: query,
    hitsPerPage: 10,
    page: 0,
    analytics: false,
    attributesToRetrieve: '*',
    attributesToSnippet: '*:20',
    getRankingInfo: true,
    snippetEllipsisText: '…',
    responseFields: '*',
    facets: '*,'
  }, function (err, result) {
    var hits = result.hits;
    if (err) {
      $('#searchContainer').removeClass('is-loading');
      throw err;
    }
    $('#result').html('');
    hitsStored = hits;
    if (hitsStored && hitsStored) {
      hitsStored.forEach(function (h) {
        $('#result').append(buildItem(h._snippetResult));
      })
    }
    $('#searchContainer').removeClass('is-loading');
  });
};

$(function () {

  $('#close').on('click', function (e) {
    e.preventDefault();
    $('#search-container').removeClass('search-container-active');
    $('#searchField').off('change paste keyup');
  });

  $('#search').on('click touchstart', function (e) {
    e.preventDefault();
    $('#search-container').addClass('search-container-active');
    $('#searchField').focus();
    var query = '';
    search(query);
    $('#searchField').on('change paste keyup', function (e) {
      e.preventDefault();
      var inputText = $('#searchField').val();
      if (inputText !== query) {
        query = inputText;
        search(query);
      }
    });
  });

});
