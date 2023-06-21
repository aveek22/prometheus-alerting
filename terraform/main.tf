resource "grafana_folder" "my_app" {
   provider = grafana.cloud

   title = "my_app"
}