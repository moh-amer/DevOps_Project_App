{{- define "labels" }}
  {{- range $key, $value := .Values.app.labels }}
      {{ $key }}: {{ $value }}
  {{- end }}
{{- end }}