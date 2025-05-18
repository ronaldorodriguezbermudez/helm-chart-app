{{/*
Define etiquetas comunes para los recursos
*/}}
{{- define "jdmapp.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Define un nombre completo para los recursos
*/}}
{{- define "jdmapp.fullname" -}}
{{ .Chart.Name }}
{{- end }}