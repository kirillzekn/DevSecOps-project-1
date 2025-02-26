{{- define "demo-app.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "demo-app.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "demo-app.namespace" -}}
{{ .Values.namespace }}
{{- end }}

{{- define "demo-app.replicas" -}}
{{ .Values.replicas }}
{{- end }}
{{- define "demo-app.hpa.minReplicas" -}}
{{ .Values.hpa.minReplicas }}
{{- end }}

{{- define "demo-app.hpa.maxReplicas" -}}
{{ .Values.hpa.maxReplicas }}
{{- end }}

{{- define "demo-app.image.repository" -}}
{{ .Values.image.repository }}
{{- end }}

{{- define "demo-app.image.tag" -}}
{{ .Values.image.tag }}
{{- end }}



{{- define "demo-app.containerPort" -}}
{{ .Values.containerPort }}
{{- end }}

{{- define "demo-app.hpa.targetCPUUtilizationPercentage" -}}
{{ .Values.hpa.targetCPUUtilizationPercentage }}
{{- end }}

{{- define "demo-app.service.nodePort" -}}
{{ .Values.service.nodePort }}
{{- end }}
