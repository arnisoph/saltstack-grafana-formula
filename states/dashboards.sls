#This is work in progress, don't use it:

dashboards:
  grafana_dashboard_arbe:
    - present
    - name: insightful-dashboard
#    - base_dashboards_from_pillar:
#      - default_dashboard
#    - base_rows_from_pillar:
#      - default_row
#    - base_panels_from_pillar:
#      - default_panel
    - dashboard:
        title: "w000t"
        originalTitle: "w000t"
        rows:
          - collapse: false
            editable: true
            height: "250px"
            title: "Row"
            panels:
              - title: "w00t panel"
                error: false
                span: 12
                editable: true
                type: "graph"
                datasource: "prometheus"
                lines: true
                fill: 1
                linewidth: 2
                points: false
                pointradius: 5
                bars: false
                stack: false
                percentage: false
                legend:
                  show: true
                  values: false
                  min: false
                  max: false
                  current: false
                  total: false
                  avg: false
                nullPointMode: "connected"
                steppedLine: false
                tooltip:
                  value_type: "cumulative"
                  shared: true
                timeFrom: null
                timeShift: null
                targets:
                  - refId: "A"
                    expr: "rate(http_request_duration_microseconds_count{job=\"prometheus\"}[5m])"
                    intervalFactor: 2
                    metric: "http_request_duration_microseconds_count"
                    legendFormat: "{{ '{{ handler }}' }}"
                aliasColors: {}
                seriesOverrides: []
                links: []

