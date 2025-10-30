#!/bin/bash

echo "🚀 Création de la structure VelibInsight..."

mkdir -p velibinsight/{src/{etl,airflow_dags,monitoring/{grafana_dashboards,alerts},database,configs,scripts},docker,k8s/{airflow,spark,grafana,prometheus,postgres},terraform,ci-cd/{github/workflows,scripts},data/{raw,processed,logs}}

touch velibinsight/{README.md,requirements.txt,docker-compose.yml,.env.example}

touch velibinsight/src/etl/{__init__.py,main.py,utils.py,metrics.py}
touch velibinsight/src/airflow_dags/{__init__.py,velib_etl_dag.py}
touch velibinsight/src/database/{models.py,schema.sql,queries.py}
touch velibinsight/src/scripts/{init_db.py,seed_data.py,check_health.py}
touch velibinsight/src/configs/{airflow.cfg,spark-defaults.conf,prometheus.yml,grafana-datasource.yml}
touch velibinsight/src/monitoring/alerts/alert_rules.yaml
touch velibinsight/src/monitoring/grafana_dashboards/{airflow_dashboard.json,spark_dashboard.json,velib_metrics.json}
touch velibinsight/terraform/{main.tf,variables.tf,outputs.tf,provider.tf}
touch velibinsight/docker/{Dockerfile.etl,Dockerfile.airflow,Dockerfile.spark,Dockerfile.grafana,Dockerfile.prometheus,Dockerfile.base}
touch velibinsight/ci-cd/github/workflows/{build.yml,deploy.yml}
touch velibinsight/ci-cd/scripts/{build_images.sh,push_images.sh,deploy_k8s.sh}

echo "✅ Structure VelibInsight créée avec succès !"
