{{- define "cmdb.mysql.redis" -}}
TZ: "Asia/Shanghai"
{{- $mysqlHost := (printf "%s:%s" .Values.api.mysql.host .Values.api.mysql.port) -}}
{{- $redisHost := (printf "%s:%s" .Values.api.redis.host .Values.api.redis.port) -}}
{{- if .Values.api.mysql.builtIn }}
MYSQL_HOST: "{{ .Release.Name }}-mysql"
MYSQL_PORT: "3306"
MYSQL_USER: "root"
MYSQL_DATABASE: "cmdb"
MYSQL_PASSWORD: {{ .Values.mysql.rootPassword | quote }}
{{- $mysqlHost = (printf "%s-mysql:3306" .Release.Name ) -}}
{{- else }}
MYSQL_HOST: {{ .Values.api.mysql.host | quote }}
MYSQL_PORT: {{ .Values.api.mysql.port | quote }}
MYSQL_USER: {{ .Values.api.mysql.user | quote }}
MYSQL_DATABASE: {{ .Values.api.mysql.database | quote }}
MYSQL_PASSWORD: {{ .Values.api.mysql.password | quote }}
{{- end }}
{{- if .Values.api.redis.builtIn }}
CACHE_REDIS_HOST: "redis"
CACHE_REDIS_PORT: "6379"
CACHE_REDIS_PASSWORD: ""
{{- $redisHost =  (print "redis:6379") -}}
{{- else }}
CACHE_REDIS_HOST: {{ .Values.api.redis.host | quote }}
CACHE_REDIS_PORT: {{ .Values.api.redis.port | quote }}
CACHE_REDIS_PASSWORD: {{ .Values.api.redis.password | quote }}
{{- end }}
WAIT_HOSTS: "{{ $mysqlHost }},{{ $redisHost }}"
CACHE_KEY_PREFIX: "CMDB::"
CACHE_DEFAULT_TIMEOUT: "3000"
{{- end }}