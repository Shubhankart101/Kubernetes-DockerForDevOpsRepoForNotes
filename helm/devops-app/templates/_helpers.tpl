{{- define "devops-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "devops-app.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "devops-app.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "devops-app.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "devops-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
{{- define "devops-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "devops-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
