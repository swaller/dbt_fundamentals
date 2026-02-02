# dbt Project Code Flow

```mermaid
flowchart TD
  sources_yml[sources.yml] --> stg_orders_sql[stg_orders.sql]
  stg_orders_sql --> fct_orders_sql[fct_orders.sql]
  fct_orders_sql --> schema_yml[schema.yml]

  subgraph sources
    sources_yml
  end

  subgraph staging
    stg_orders_sql
  end

  subgraph marts
    fct_orders_sql
  end
  ```