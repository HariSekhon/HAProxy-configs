Advanced HAProxy Configs for Big Data, NoSQL, Web and Infrastructure technologies
===============================
[![Build Status](https://travis-ci.org/HariSekhon/HAProxy-configs.svg?branch=master)](https://travis-ci.org/HariSekhon/HAProxy-configs)

Advanced HAProxy configurations for Multi-Master, Active-Standby (Hadoop, HBase, Presto) and Peer-to-Peer technologies (Elasticsearch, SolrCloud etc).

Designed both for production-grade High Availability and also to make scripting and monitoring easier when connecting to APIs.

Forked as a submodule from the [Advanced Nagios Plugins Collection](https://github.com/harisekhon/nagios-plugins#advanced-nagios-plugins-collection), these configurations contain specialised Health Checks for each system based on experience and code from the [Advanced Nagios Plugins Collection](https://github.com/harisekhon/nagios-plugins#advanced-nagios-plugins-collection) and [DevOps Python Tools](https://github.com/harisekhon/devops-python-tools) github repos.

**Recommended to run with High Availability HAProxy using VRRP to create full production-grade High Availability load balancer solutions.**

Hari Sekhon

Cloud & Big Data Contractor, United Kingdom

(ex-Cloudera, former Hortonworks Consultant)

https://www.linkedin.com/in/harisekhon
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

```
haproxy -f 10-global.cfg -f elasticsearch.cfg
```

For multiple services just add those service configurations to the command line options:
```
haproxy -f 10-global.cfg -f elasticsearch.cfg -f solrcloud.cfg
```

Some technologies default to the same port number (eg. Ambari and Presto both use port 8080), so if running both on the same HAProxy host then just modify one of the frontend listening port numbers.

If you want to add a Stats Admin UI then include the ```20-stats.cfg``` configuration (**remember to change the default password `test`**):
```
haproxy -f 10-global.cfg -f 20-stats.cfg -f elasticsearch.cfg ...
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

- ```find_active_server.py``` from the [DevOps Python Tools](https://github.com/harisekhon/devops-python-tools) repo and its related adjacent programs for on-the-fly command line determination of active masters or first responding peers across many of these same technologies

* [DevOps Python Tools](https://github.com/harisekhon/devops-python-tools) - 80+ DevOps CLI tools for AWS, Hadoop, HBase, Spark, Log Anonymizer, Ambari Blueprints, AWS CloudFormation, Linux, Docker, Spark Data Converters & Validators (Avro / Parquet / JSON / CSV / INI / XML / YAML), Elasticsearch, Solr, Travis CI, Pig, IPython

* [The Advanced Nagios Plugins Collection](https://github.com/harisekhon/nagios-plugins) - 450+ programs for Nagios monitoring your Hadoop & NoSQL clusters. Covers every Hadoop vendor's management API and every major NoSQL technology (HBase, Cassandra, MongoDB, Elasticsearch, Solr, Riak, Redis etc.) as well as message queues (Kafka, RabbitMQ), continuous integration (Jenkins, Travis CI) and traditional infrastructure (SSL, Whois, DNS, Linux)

* [DevOps Bash Tools](https://github.com/harisekhon/devops-bash-tools) - 100+ DevOps Bash scripts, advanced `.bashrc`, `.vimrc`, `.screenrc`, `.tmux.conf`, `.toprc`, Utility Code Library used by CI and all my GitHub repos - includes code for AWS, Kubernetes, Kafka, Docker, Git, Code & build linting, package management for Linux / Mac / Perl / Python / Ruby / Golang, and lots more random goodies

* [DevOps Perl Tools](https://github.com/harisekhon/perl-tools) - 25+ DevOps CLI tools for Hadoop, HDFS, Hive, Solr/SolrCloud CLI, Log Anonymizer, Nginx stats & HTTP(S) URL watchers for load balanced web farms, Dockerfiles & SQL ReCaser (Hive, Impala, MySQL, PostgreSQL, Cassandra CQL, Apache Drill, Couchbase N1QL, Microsoft SQL Server, Oracle, Pig Latin, Neo4j, InfluxDB), Ambari FreeIPA Kerberos, Datameer, Linux...

* [Dockerfiles](https://github.com/HariSekhon/Dockerfiles) - 50+ DockerHub public images for Docker & Kubernetes - Hadoop, Kafka, ZooKeeper, HBase, Cassandra, Solr, SolrCloud, Presto, Apache Drill, Nifi, Spark, Mesos, Consul, Riak, OpenTSDB, Jython, Advanced Nagios Plugins & DevOps Tools repos on Alpine, CentOS, Debian, Fedora, Ubuntu, Superset, H2O, Serf, Alluxio / Tachyon, FakeS3

### Stargazers over time

[![Stargazers over time](https://starchart.cc/HariSekhon/HAProxy-configs.svg)](https://starchart.cc/HariSekhon/HAProxy-configs)
