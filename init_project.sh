#!/bin/bash

echo "🚀 Création de la structure VelibInsight..."

# Création des dossiers
mkdir -p velibinsight/{src/{etl,airflow_dags,monitoring/{grafana_dashboards,alerts},database,configs,scripts},docker,k8s/{airflow,spark,grafana,prometheus,postgres},terraform,ci-cd/{github/workflows,scripts},data/{raw,processed,logs}}

# Fichiers racine
touch velibinsight/{README.md,requirements.txt,docker-compose.yml,.env.example}

# ETL
touch velibinsight/src/etl/{__init__.py,main.py,utils.py,metrics.py}

# Airflow
touch velibinsight/src/airflow_dags/{__init__.py,velib_etl_dag.py}

# Database
touch velibinsight/src/database/{models.py,schema.sql,queries.py}

# Scripts utilitaires
touch velibinsight/src/scripts/{init_db.py,seed_data.py,check_health.py}

# Configs
touch velibinsight/src/configs/{airflow.cfg,spark-defaults.conf,prometheus.yml,grafana-datasource.yml}

# Monitoring
touch velibinsight/src/monitoring/alerts/alert_rules.yaml
touch velibinsight/src/monitoring/grafana_dashboards/{airflow_dashboard.json,spark_dashboard.json,velib_metrics.json}

# Terraform
touch velibinsight/terraform/{main.tf,variables.tf,outputs.tf,provider.tf}

# Docker
touch velibinsight/docker/{Dockerfile.etl,Dockerfile.airflow,Dockerfile.spark,Dockerfile.grafana,Dockerfile.prometheus,Dockerfile.base}

# CI/CD
touch velibinsight/ci-cd/github/workflows/{build.yml,deploy.yml}
touch velibinsight/ci-cd/scripts/{build_images.sh,push_images.sh,deploy_k8s.sh}

# K8s
for service in airflow spark grafana prometheus postgres; do
  touch velibinsight/k8s/$service/{deployment.yaml,service.yaml,configmap.yaml}
done

echo "✅ Structure VelibInsight créée avec succès !"
