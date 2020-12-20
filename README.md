Advanced HAProxy Configs for Big Data, NoSQL, Web and Infrastructure technologies
================================

[![Codacy](https://api.codacy.com/project/badge/Grade/f24e17486db64270b4ae9c10f7f2bf84)](https://www.codacy.com/app/harisekhon/haproxy-configs)
[![CodeFactor](https://www.codefactor.io/repository/github/harisekhon/HAProxy-configs/badge)](https://www.codefactor.io/repository/github/harisekhon/HAProxy-configs)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=HariSekhon_HAProxy-configs&metric=alert_status)](https://sonarcloud.io/dashboard?id=HariSekhon_HAProxy-configs)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=HariSekhon_HAProxy-configs&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=HariSekhon_HAProxy-configs)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=HariSekhon_HAProxy-configs&metric=reliability_rating)](https://sonarcloud.io/dashboard?id=HariSekhon_HAProxy-configs)
[![Security Rating](https://sonarcloud.io/api/project_badges/measure?project=HariSekhon_HAProxy-configs&metric=security_rating)](https://sonarcloud.io/dashboard?id=HariSekhon_HAProxy-configs)
[![GitHub stars](https://img.shields.io/github/stars/harisekhon/HAProxy-configs?logo=github)](https://github.com/HariSekhon/HAProxy-configs/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/harisekhon/HAProxy-configs?logo=github)](https://github.com/HariSekhon/HAProxy-configs/network)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/HariSekhon/HAProxy-configs?logo=github)](https://github.com/HariSekhon/HAProxy-configs/commits/master)
[![Lines of Code](https://img.shields.io/badge/lines%20of%20code-6k-lightgrey?logo=codecademy)](https://github.com/HariSekhon/HAProxy-configs)

[![Linux](https://img.shields.io/badge/OS-Linux-blue?logo=linux)](https://github.com/HariSekhon/HAProxy-configs)
[![Mac](https://img.shields.io/badge/OS-Mac-blue?logo=apple)](https://github.com/HariSekhon/HAProxy-configs)
[![Docker](https://img.shields.io/badge/container-Docker-blue?logo=docker)](https://hub.docker.com/_/haproxy)
[![StarTrack](https://img.shields.io/badge/Star-Track-blue?logo=github)](https://seladb.github.io/StarTrack-js/#/preload?r=HariSekhon,Nagios-Plugins&r=HariSekhon,Dockerfiles&r=HariSekhon,DevOps-Python-tools&r=HariSekhon,DevOps-Perl-tools&r=HariSekhon,DevOps-Bash-tools&r=HariSekhon,HAProxy-configs&r=HariSekhon,SQL-scripts)
[![StarCharts](https://img.shields.io/badge/Star-Charts-blue?logo=github)](https://github.com/HariSekhon/DevOps-Bash-tools/blob/master/STARCHARTS.md)

[![CI Builds Overview](https://img.shields.io/badge/CI%20Builds-Overview%20Page-blue?logo=circleci)](https://bitbucket.org/harisekhon/devops-bash-tools/src/master/STATUS.md)
[![Jenkins](https://img.shields.io/badge/Jenkins-ready-blue?logo=jenkins&logoColor=white)](https://github.com/HariSekhon/HAProxy-configs/blob/master/Jenkinsfile)
[![Concourse](https://img.shields.io/badge/Concourse-ready-blue?logo=concourse)](https://github.com/HariSekhon/HAProxy-configs/blob/master/.concourse.yml)
[![GoCD](https://img.shields.io/badge/GoCD-ready-blue?logo=go)](https://github.com/HariSekhon/HAProxy-configs/blob/master/.gocd.yml)
[![TeamCity](https://img.shields.io/badge/TeamCity-ready-blue?logo=teamcity)](https://github.com/HariSekhon/TeamCity-CI)

[![Travis CI](https://img.shields.io/travis/harisekhon/HAProxy-configs/master?logo=travis&label=Travis%20CI)](https://travis-ci.org/HariSekhon/HAProxy-configs)
[![AppVeyor](https://img.shields.io/appveyor/build/harisekhon/HAProxy-configs/master?logo=appveyor&label=AppVeyor)](https://ci.appveyor.com/project/HariSekhon/HAProxy-configs/branch/master)
[![Drone](https://img.shields.io/drone/build/HariSekhon/HAProxy-configs/master?logo=drone&label=Drone)](https://cloud.drone.io/HariSekhon/HAProxy-configs)
[![CircleCI](https://circleci.com/gh/HariSekhon/HAProxy-configs.svg?style=svg)](https://circleci.com/gh/HariSekhon/HAProxy-configs)
[![Codeship Status for HariSekhon/HAProxy-configs](https://app.codeship.com/projects/6e6d6a50-3c5f-0138-6969-1ecbdb7eccb9/status?branch=master)](https://app.codeship.com/projects/387248)
[![Shippable](https://img.shields.io/shippable/5e52c63645c70f0007ff514e/master?label=Shippable&logo=jfrog)](https://app.shippable.com/github/HariSekhon/HAProxy-configs/dashboard/jobs)
[![Codefresh](https://g.codefresh.io/api/badges/pipeline/harisekhon/GitHub%2FHAProxy-configs?branch=master&key=eyJhbGciOiJIUzI1NiJ9.NWU1MmM5OGNiM2FiOWUzM2Y3ZDZmYjM3.O69674cW7vYom3v5JOGKXDbYgCVIJU9EWhXUMHl3zwA&type=cf-1)](https://g.codefresh.io/pipelines/edit/new/builds?id=5e58e31b3953b7fe454b7904&pipeline=HAProxy-configs&projects=GitHub&projectId=5e52ca8ea284e00f882ea992&context=github&filter=page:1;pageSize:10;timeFrameStart:week)
[![BuildKite](https://img.shields.io/buildkite/0eaa69ea93cc6695ecd48013d1daf895e0e9a7bcef068b7324/master?label=BuildKite&logo=buildkite)](https://buildkite.com/hari-sekhon/haproxy-configs)
[![Cirrus CI](https://img.shields.io/cirrus/github/HariSekhon/HAProxy-configs/master?logo=Cirrus%20CI&label=Cirrus%20CI)](https://cirrus-ci.com/github/HariSekhon/HAProxy-configs)
[![Semaphore](https://harisekhon.semaphoreci.com/badges/HAProxy-configs.svg)](https://harisekhon.semaphoreci.com/projects/HAProxy-configs)
[![Wercker](https://app.wercker.com/status/3eab52046f673b476fa5e54adb5dfbba/s/master "wercker status")](https://app.wercker.com/harisekhon/haproxy-configs/runs)
<!--[![Wercker](https://img.shields.io/wercker/ci/5e58ef3d4fb3d108006b1ff5/master?label=Wercker&logo=oracle)](https://app.wercker.com/harisekhon/haproxy-configs/runs)-->

[![Azure DevOps Pipeline](https://dev.azure.com/harisekhon/GitHub/_apis/build/status/HariSekhon.HAProxy-configs?branchName=master)](https://dev.azure.com/harisekhon/GitHub/_build/latest?definitionId=10&branchName=master)
[![BitBucket Pipeline](https://img.shields.io/bitbucket/pipelines/harisekhon/haproxy-configs/master?logo=bitbucket&label=BitBucket%20CI)](https://bitbucket.org/harisekhon/haproxy-configs/addon/pipelines/home#!/)
[![GitLab Pipeline](https://img.shields.io/gitlab/pipeline/harisekhon/HAProxy-configs?logo=gitlab&label=GitLab%20CI)](https://gitlab.com/HariSekhon/HAProxy-configs/pipelines)
[![AWS CodeBuild](https://img.shields.io/badge/AWS%20CodeBuild-ready-blue?logo=amazon%20aws)](https://github.com/HariSekhon/HAProxy-configs/blob/master/buildspec.yml)
[![GCP Cloud Build](https://img.shields.io/badge/GCP%20Cloud%20Build-ready-blue?logo=google%20cloud)](https://github.com/HariSekhon/HAProxy-configs/blob/master/cloudbuild.yaml)

[![Repo on Azure DevOps](https://img.shields.io/badge/repo-Azure%20DevOps-0078D7?logo=azure%20devops)](https://dev.azure.com/harisekhon/GitHub/_git/HAProxy-configs)
[![Repo on GitHub](https://img.shields.io/badge/repo-GitHub-2088FF?logo=github)](https://github.com/HariSekhon/HAProxy-configs)
[![Repo on GitLab](https://img.shields.io/badge/repo-GitLab-FCA121?logo=gitlab)](https://gitlab.com/HariSekhon/HAProxy-configs)
[![Repo on BitBucket](https://img.shields.io/badge/repo-BitBucket-0052CC?logo=bitbucket)](https://bitbucket.org/HariSekhon/HAProxy-configs)

[![GitHub Actions Ubuntu](https://github.com/HariSekhon/HAProxy-configs/workflows/GitHub%20Actions%20Ubuntu/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22GitHub+Actions+Ubuntu%22)
[![Mac](https://github.com/HariSekhon/HAProxy-configs/workflows/Mac/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Mac%22)
[![Mac 10.15](https://github.com/HariSekhon/HAProxy-configs/workflows/Mac%2010.15/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Mac+10.15%22)
[![Ubuntu](https://github.com/HariSekhon/HAProxy-configs/workflows/Ubuntu/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Ubuntu%22)
[![Ubuntu 14.04](https://github.com/HariSekhon/HAProxy-configs/workflows/Ubuntu%2014.04/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Ubuntu+14.04%22)
[![Ubuntu 16.04](https://github.com/HariSekhon/HAProxy-configs/workflows/Ubuntu%2016.04/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Ubuntu+16.04%22)
[![Ubuntu 18.04](https://github.com/HariSekhon/HAProxy-configs/workflows/Ubuntu%2018.04/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Ubuntu+18.04%22)
[![Ubuntu 20.04](https://github.com/HariSekhon/HAProxy-configs/workflows/Ubuntu%2020.04/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Ubuntu+20.04%22)
[![Debian](https://github.com/HariSekhon/HAProxy-configs/workflows/Debian/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Debian%22)
[![Debian 8](https://github.com/HariSekhon/HAProxy-configs/workflows/Debian%208/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Debian+8%22)
[![Debian 9](https://github.com/HariSekhon/HAProxy-configs/workflows/Debian%209/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Debian+9%22)
[![Debian 10](https://github.com/HariSekhon/HAProxy-configs/workflows/Debian%2010/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Debian+10%22)
[![CentOS](https://github.com/HariSekhon/HAProxy-configs/workflows/CentOS/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22CentOS%22)
[![CentOS 7](https://github.com/HariSekhon/HAProxy-configs/workflows/CentOS%207/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22CentOS+7%22)
[![CentOS 8](https://github.com/HariSekhon/HAProxy-configs/workflows/CentOS%208/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22CentOS+8%22)
[![Fedora](https://github.com/HariSekhon/HAProxy-configs/workflows/Fedora/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Fedora%22)
[![Alpine](https://github.com/HariSekhon/HAProxy-configs/workflows/Alpine/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Alpine%22)
[![Alpine 3](https://github.com/HariSekhon/HAProxy-configs/workflows/Alpine%203/badge.svg)](https://github.com/HariSekhon/HAProxy-configs/actions?query=workflow%3A%22Alpine+3%22)

[git.io/haproxy-configs](https://git.io/haproxy-configs)

Advanced HAProxy configurations for Multi-Master, Active-Standby (Hadoop, HBase, Presto) and Peer-to-Peer technologies (Elasticsearch, SolrCloud etc).

Designed both for production-grade High Availability and also to make scripting and monitoring easier when connecting to APIs.

Forked as a submodule from the [Advanced Nagios Plugins Collection](https://github.com/harisekhon/nagios-plugins#advanced-nagios-plugins-collection), these configurations contain specialised Health Checks for each system based on experience and code from the [Advanced Nagios Plugins Collection](https://github.com/harisekhon/nagios-plugins#advanced-nagios-plugins-collection) and [DevOps Python Tools](https://github.com/harisekhon/devops-python-tools) github repos.

**Recommended to run with High Availability HAProxy using VRRP to create full production-grade High Availability load balancer solutions.**

Hari Sekhon

Cloud & Big Data Contractor, United Kingdom

(ex-Cloudera, former Hortonworks Consultant)

[![My LinkedIn](https://img.shields.io/badge/LinkedIn%20Profile-HariSekhon-blue?logo=linkedin)](https://www.linkedin.com/in/harisekhon/)
###### (you're welcome to connect with me on LinkedIn)

### Features

Each config comes pre-tuned with:

  1. Specialised Health Checks per technology's API
  2. Load Balancing algorithm selected best suited per technology (depending on Active/Passive, Peer-to-Peer etc)
  3. Various buffer sizes, keepalives, connection limits and server retries already tuned (many via shared global config `10-global.cfg`)
  4. ACL protections - limits access to private IP addresses - safer by default but easy to disable if you need to serve the internet
  5. Additional logging
  6. Optional Stats Admin UI (excellent for admin, monitoring and debugging - password protected, change the default password from 'test' in `20-stats.cfg` if you source that config)

You should use an expert consultant to fine tune to your needs but these should be extremely close to your finished production configurations. **In most cases all you need to do is put in your addresses for the backend servers**.


## Usage

Configurations are split by service in the form of ```<service>.cfg``` for mix-and-match convenience and must be combined with ```10-global.cfg``` settings like so:

```sh
$ haproxy -f 10-global.cfg -f elasticsearch.cfg
```

For multiple services just add those service configurations to the command line options:

```sh
$ haproxy -f 10-global.cfg -f elasticsearch.cfg -f solrcloud.cfg
```

Some technologies default to the same port number (eg. Ambari and Presto both use port 8080), so if running both on the same HAProxy host then just modify one of the frontend listening port numbers.

If you want to add a Stats Admin UI then include the ```20-stats.cfg``` configuration (**remember to change the default password `test`**):

```sh
$ haproxy -f 10-global.cfg -f 20-stats.cfg -f elasticsearch.cfg ...
```

#### Shortcut

To shorten the command line you can simply use the `run.sh` script instead:

```sh
./run.sh elasticsearch.cfg
```

and easily with multiple configs

```sh
./run.sh elasticsearch.cfg solrcloud.cfg ...
```

### Backend Server Addresses (set these to your cluster hosts)

**In most cases all you'll need to do is add your server addresses in to the backend config and then start HAProxy**.

Common backend server addresses have been pre-populated for convenience including:

  - ```<service>``` - generic service name matching the proxied technology - could be resolved by DNS to multiple IPs to be balanced across
  - ```192.168.99.100``` - the common [Docker Machine](https://docs.docker.com/machine/overview/) / [MiniKube](https://minikube.sigs.k8s.io) / [MiniShift](https://www.okd.io/minishift/) IP address
  - ```docker``` - convenient to use DNS or `/etc/hosts` to point this to your Docker host

These addresses are used in Continuous Integration tests run on this repo from the [Advanced Nagios Plugins Collection](https://github.com/harisekhon/nagios-plugins#advanced-nagios-plugins-collection).


### More Configs

See the ```untested/``` directory for a few more including SSL config versions I haven't got round to testing yet but should work.


### Tests

Forked as a submodule from the [Advanced Nagios Plugins Collection](https://github.com/harisekhon/nagios-plugins#advanced-nagios-plugins-collection). These HAProxy configs are tested against Docker containers as part of CI tests in that repo.


### See Also

* ```find_active_server.py``` from the [DevOps Python Tools](https://github.com/harisekhon/devops-python-tools) repo and its related adjacent programs for on-the-fly command line determination of active masters or first responding peers across many of these same technologies

* [DevOps Bash Tools](https://github.com/harisekhon/devops-bash-tools) - 550+ DevOps Bash Scripts, Advanced `.bashrc`, `.vimrc`, `.screenrc`, `.tmux.conf`, `.gitconfig`, CI configs & Utility Code Library - AWS, GCP, Kubernetes, Docker, Kafka, Hadoop, SQL, BigQuery, Hive, Impala, PostgreSQL, MySQL, LDAP, DockerHub, Jenkins, Spotify API & MP3 tools, Git tricks, GitHub API, GitLab API, BitBucket API, Code & build linting, package management for Linux / Mac / Python / Perl / Ruby / NodeJS / Golang, and lots more random goodies

* [SQL Scripts](https://github.com/HariSekhon/SQL-scripts) - 100+ SQL Scripts - PostgreSQL, MySQL, AWS Athena, Google BigQuery

* [Templates](https://github.com/HariSekhon/Templates) - dozens of Code & Config templates - AWS, GCP, Docker, Jenkins, Terraform, Vagrant, Puppet, Python, Bash, Go, Perl, Java, Scala, Groovy, Maven, SBT, Gradle, Make, GitHub Actions Workflows, CircleCI, Jenkinsfile, Makefile, Dockerfile, docker-compose.yml, M4 etc.

* [Kubernetes templates](https://github.com/HariSekhon/Kubernetes-templates) - Kubernetes YAML templates - Best Practices, Tips & Tricks are baked right into the templates for future deployments

* [DevOps Python Tools](https://github.com/harisekhon/devops-python-tools) - 80+ DevOps CLI tools for AWS, Hadoop, HBase, Spark, Log Anonymizer, Ambari Blueprints, AWS CloudFormation, Linux, Docker, Spark Data Converters & Validators (Avro / Parquet / JSON / CSV / INI / XML / YAML), Elasticsearch, Solr, Travis CI, Pig, IPython

* [The Advanced Nagios Plugins Collection](https://github.com/harisekhon/nagios-plugins) - 450+ programs for Nagios monitoring your Hadoop & NoSQL clusters. Covers every Hadoop vendor's management API and every major NoSQL technology (HBase, Cassandra, MongoDB, Elasticsearch, Solr, Riak, Redis etc.) as well as message queues (Kafka, RabbitMQ), continuous integration (Jenkins, Travis CI) and traditional infrastructure (SSL, Whois, DNS, Linux)

* [DevOps Perl Tools](https://github.com/harisekhon/perl-tools) - 25+ DevOps CLI tools for Hadoop, HDFS, Hive, Solr/SolrCloud CLI, Log Anonymizer, Nginx stats & HTTP(S) URL watchers for load balanced web farms, Dockerfiles & SQL ReCaser (MySQL, PostgreSQL, AWS Redshift, Snowflake, Apache Drill, Hive, Impala, Cassandra CQL, Microsoft SQL Server, Oracle, Couchbase N1QL, Dockerfiles, Pig Latin, Neo4j, InfluxDB), Ambari FreeIPA Kerberos, Datameer, Linux...

* [Dockerfiles](https://github.com/HariSekhon/Dockerfiles) - 50+ DockerHub public images for Docker & Kubernetes - Hadoop, Kafka, ZooKeeper, HBase, Cassandra, Solr, SolrCloud, Presto, Apache Drill, Nifi, Spark, Mesos, Consul, Riak, OpenTSDB, Jython, Advanced Nagios Plugins & DevOps Tools repos on Alpine, CentOS, Debian, Fedora, Ubuntu, Superset, H2O, Serf, Alluxio / Tachyon, FakeS3

### Stargazers over time

[![Stargazers over time](https://starchart.cc/HariSekhon/HAProxy-configs.svg)](https://starchart.cc/HariSekhon/HAProxy-configs)

[git.io/haproxy-configs](https://git.io/haproxy-configs)
