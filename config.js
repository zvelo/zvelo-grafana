define(['settings'], function(Settings) {
  "use strict";
  return new Settings({
    datasources: {
      graphite: {
        type: 'graphite',
        url: "{{ZVELO_GRAPHITE_PUBLIC_URL}}"
      },
      elasticsearch: {
        type: 'elasticsearch',
        url: "{{ZVELO_ELASTICSEARCH_PUBLIC_URL}}",
        index: 'grafana-dash',
        grafanaDB: true
      }
    },
    search: {
      max_results: 100
    },
    default_route: '/dashboard/file/default.json',
    unsaved_changes_warning: true,
    playlist_timespan: "1m",
    admin: {
      password: ''
    },
    window_title_prefix: 'Grafana - ',
    plugins: {
      panels: [],
      dependencies: [],
    }
  });
});
